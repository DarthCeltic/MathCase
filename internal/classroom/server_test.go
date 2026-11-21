package classroom

import (
	"bytes"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"path/filepath"
	"strings"
	"testing"
)

func TestPrivateClassroomWorkflowPersistenceAndRoleIsolation(t *testing.T) {
	path := filepath.Join(t.TempDir(), "classroom.json")
	store, err := NewStore(path)
	if err != nil {
		t.Fatal(err)
	}
	token := strings.Repeat("b", 48)
	if err := store.InitializeBootstrapToken(token); err != nil {
		t.Fatal(err)
	}
	server := NewServer(store, false)
	handler := http.Handler(server)

	bootstrap := doJSON(t, handler, http.MethodPost, "/api/bootstrap", "", "", map[string]any{
		"token": token, "username": "teacher-one", "password": "teacher-password-2026",
	})
	if bootstrap.Code != http.StatusCreated {
		t.Fatalf("bootstrap status = %d, body %s", bootstrap.Code, bootstrap.Body.String())
	}
	teacherCookie := cookieFrom(t, bootstrap).Value
	var boot struct {
		User UserSummary `json:"user"`
		CSRF string      `json:"csrf_token"`
	}
	if err := json.Unmarshal(bootstrap.Body.Bytes(), &boot); err != nil {
		t.Fatal(err)
	}
	if boot.User.Role != RoleTeacher || boot.CSRF == "" {
		t.Fatalf("bootstrap response = %#v", boot)
	}
	if strings.Contains(bootstrap.Body.String(), "password_hash") || strings.Contains(bootstrap.Body.String(), "teacher-password-2026") {
		t.Fatal("bootstrap response leaked password material")
	}

	learnerOneResponse := doJSON(t, handler, http.MethodPost, "/api/learners", teacherCookie, boot.CSRF, map[string]any{
		"username": "learner-one", "password": "learner-password-2026",
	})
	if learnerOneResponse.Code != http.StatusCreated {
		t.Fatalf("create learner one status = %d, body %s", learnerOneResponse.Code, learnerOneResponse.Body.String())
	}
	var learnerOne struct {
		Learner UserSummary `json:"learner"`
	}
	if err := json.Unmarshal(learnerOneResponse.Body.Bytes(), &learnerOne); err != nil {
		t.Fatal(err)
	}
	learnerTwoResponse := doJSON(t, handler, http.MethodPost, "/api/learners", teacherCookie, boot.CSRF, map[string]any{
		"username": "learner-two", "password": "learner-two-password-2026",
	})
	if learnerTwoResponse.Code != http.StatusCreated {
		t.Fatalf("create learner two status = %d", learnerTwoResponse.Code)
	}
	var learnerTwo struct {
		Learner UserSummary `json:"learner"`
	}
	if err := json.Unmarshal(learnerTwoResponse.Body.Bytes(), &learnerTwo); err != nil {
		t.Fatal(err)
	}

	assignmentResponse := doJSON(t, handler, http.MethodPost, "/api/assignments", teacherCookie, boot.CSRF, map[string]any{
		"learner_id":      learnerOne.Learner.ID,
		"title":           "Divisibility exercise",
		"plain_statement": "If a divides b and b divides c, then a divides c.",
		"lean_target":     "theorem dvd_trans (a b c : Nat) : a ∣ b → b ∣ c → a ∣ c",
		"prompt":          "Try to reuse the checked transitivity lemma.",
	})
	if assignmentResponse.Code != http.StatusCreated {
		t.Fatalf("create assignment status = %d, body %s", assignmentResponse.Code, assignmentResponse.Body.String())
	}
	var assignmentResult struct {
		Assignment Assignment `json:"assignment"`
	}
	if err := json.Unmarshal(assignmentResponse.Body.Bytes(), &assignmentResult); err != nil {
		t.Fatal(err)
	}
	assignment := assignmentResult.Assignment

	learnerTwoSession := login(t, handler, "learner-two", "learner-two-password-2026")
	learnerTwoList := doJSON(t, handler, http.MethodGet, "/api/assignments", learnerTwoSession.cookie, "", nil)
	if learnerTwoList.Code != http.StatusOK || strings.Contains(learnerTwoList.Body.String(), assignment.ID) {
		t.Fatalf("unassigned learner saw assignment: status=%d body=%s", learnerTwoList.Code, learnerTwoList.Body.String())
	}
	deniedSubmission := doJSON(t, handler, http.MethodPost, "/api/submissions", learnerTwoSession.cookie, learnerTwoSession.csrf, map[string]any{
		"assignment_id": assignment.ID, "answer": "not assigned",
	})
	if deniedSubmission.Code != http.StatusNotFound {
		t.Fatalf("unassigned submission status = %d, want 404", deniedSubmission.Code)
	}
	learnerCannotReview := doJSON(t, handler, http.MethodGet, "/api/submissions", learnerTwoSession.cookie, "", nil)
	if learnerCannotReview.Code != http.StatusForbidden {
		t.Fatalf("learner review status = %d, want 403", learnerCannotReview.Code)
	}

	learnerOneSession := login(t, handler, "learner-one", "learner-password-2026")
	learnerOneList := doJSON(t, handler, http.MethodGet, "/api/assignments", learnerOneSession.cookie, "", nil)
	if learnerOneList.Code != http.StatusOK || !strings.Contains(learnerOneList.Body.String(), assignment.ID) {
		t.Fatalf("assigned learner did not see assignment: status=%d body=%s", learnerOneList.Code, learnerOneList.Body.String())
	}
	submissionResponse := doJSON(t, handler, http.MethodPost, "/api/submissions", learnerOneSession.cookie, learnerOneSession.csrf, map[string]any{
		"assignment_id": assignment.ID, "answer": "Let a | b and b | c. By transitivity, a | c.",
	})
	if submissionResponse.Code != http.StatusCreated {
		t.Fatalf("submission status = %d, body %s", submissionResponse.Code, submissionResponse.Body.String())
	}

	teacherSubmissions := doJSON(t, handler, http.MethodGet, "/api/submissions", teacherCookie, "", nil)
	if teacherSubmissions.Code != http.StatusOK || !strings.Contains(teacherSubmissions.Body.String(), "Let a | b") {
		t.Fatalf("teacher did not receive submission: status=%d body=%s", teacherSubmissions.Code, teacherSubmissions.Body.String())
	}
	withoutCSRF := doJSON(t, handler, http.MethodPost, "/api/assignments", teacherCookie, "", map[string]any{
		"learner_id": learnerOne.Learner.ID, "title": "No CSRF", "plain_statement": "A", "lean_target": "True",
	})
	if withoutCSRF.Code != http.StatusForbidden {
		t.Fatalf("missing CSRF status = %d, want 403", withoutCSRF.Code)
	}
	crossOrigin := doJSONOrigin(t, handler, http.MethodPost, "/api/assignments", "https://attacker.invalid", teacherCookie, boot.CSRF, map[string]any{
		"learner_id": learnerOne.Learner.ID, "title": "Cross origin", "plain_statement": "A", "lean_target": "True",
	})
	if crossOrigin.Code != http.StatusForbidden {
		t.Fatalf("cross-origin status = %d, want 403", crossOrigin.Code)
	}

	reopened, err := NewStore(path)
	if err != nil {
		t.Fatal(err)
	}
	persistedAssignments, err := reopened.AssignmentsFor(learnerOne.Learner.ID)
	if err != nil {
		t.Fatal(err)
	}
	persistedSubmissions, err := reopened.SubmissionsForTeacher(boot.User.ID)
	if err != nil {
		t.Fatal(err)
	}
	if len(persistedAssignments) != 1 || persistedAssignments[0].ID != assignment.ID || len(persistedSubmissions) != 1 {
		t.Fatalf("reopened records = assignments %#v, submissions %#v", persistedAssignments, persistedSubmissions)
	}
	if _, err := reopened.Authenticate("teacher-one", "teacher-password-2026"); err != nil {
		t.Fatalf("password authentication after restart = %v", err)
	}
	if err := reopened.InitializeBootstrapToken(strings.Repeat("c", 48)); err == nil {
		t.Fatal("bootstrap token was reinitialized after first teacher")
	}
}

func TestPrivateClassroomRequiresSameOriginAndUsesHttpOnlyStrictCookie(t *testing.T) {
	store, err := NewStore(filepath.Join(t.TempDir(), "classroom.json"))
	if err != nil {
		t.Fatal(err)
	}
	token := strings.Repeat("d", 48)
	if err := store.InitializeBootstrapToken(token); err != nil {
		t.Fatal(err)
	}
	handler := NewServer(store, false)

	wrongOrigin := doJSONOrigin(t, handler, http.MethodPost, "/api/bootstrap", "https://other.invalid", "", "", map[string]any{
		"token": token, "username": "teacher-one", "password": "teacher-password-2026",
	})
	if wrongOrigin.Code != http.StatusForbidden {
		t.Fatalf("wrong-origin bootstrap status = %d", wrongOrigin.Code)
	}
	goodOrigin := doJSONOrigin(t, handler, http.MethodPost, "/api/bootstrap", "http://classroom.test", "", "", map[string]any{
		"token": token, "username": "teacher-one", "password": "teacher-password-2026",
	})
	if goodOrigin.Code != http.StatusCreated {
		t.Fatalf("bootstrap status = %d, body %s", goodOrigin.Code, goodOrigin.Body.String())
	}
	cookie := cookieFrom(t, goodOrigin)
	if !cookie.HttpOnly || cookie.SameSite != http.SameSiteStrictMode || cookie.Secure {
		t.Fatalf("loopback cookie attributes = %#v", cookie)
	}
}

type signedIn struct {
	cookie string
	csrf   string
}

func login(t *testing.T, handler http.Handler, username, password string) signedIn {
	t.Helper()
	response := doJSON(t, handler, http.MethodPost, "/api/login", "", "", map[string]any{"username": username, "password": password})
	if response.Code != http.StatusOK {
		t.Fatalf("login status = %d, body %s", response.Code, response.Body.String())
	}
	var result struct {
		CSRF string `json:"csrf_token"`
	}
	if err := json.Unmarshal(response.Body.Bytes(), &result); err != nil {
		t.Fatal(err)
	}
	return signedIn{cookie: cookieFrom(t, response).Value, csrf: result.CSRF}
}

func cookieFrom(t *testing.T, response *httptest.ResponseRecorder) *http.Cookie {
	t.Helper()
	for _, cookie := range response.Result().Cookies() {
		if cookie.Name == sessionCookieName {
			return cookie
		}
	}
	t.Fatal("session cookie missing")
	return nil
}

func doJSON(t *testing.T, handler http.Handler, method, path, cookie, csrf string, value any) *httptest.ResponseRecorder {
	t.Helper()
	origin := "http://classroom.test"
	return doJSONOrigin(t, handler, method, path, origin, cookie, csrf, value)
}

func doJSONOrigin(t *testing.T, handler http.Handler, method, path, origin, cookie, csrf string, value any) *httptest.ResponseRecorder {
	t.Helper()
	var body bytes.Buffer
	if value != nil {
		if err := json.NewEncoder(&body).Encode(value); err != nil {
			t.Fatal(err)
		}
	}
	request := httptest.NewRequest(method, "http://classroom.test"+path, &body)
	request.Header.Set("Origin", origin)
	if value != nil {
		request.Header.Set("Content-Type", "application/json")
	}
	if cookie != "" {
		request.AddCookie(&http.Cookie{Name: sessionCookieName, Value: cookie})
	}
	if csrf != "" {
		request.Header.Set("X-MathCase-CSRF", csrf)
	}
	response := httptest.NewRecorder()
	handler.ServeHTTP(response, request)
	return response
}
