package classroom

import (
	"crypto/rand"
	"crypto/sha256"
	"crypto/subtle"
	"embed"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net"
	"net/http"
	"net/url"
	"strings"
	"sync"
	"time"
)

const (
	sessionCookieName = "mathcase_classroom"
	sessionLifetime   = 8 * time.Hour
	loginWindow       = 15 * time.Minute
	loginMaxAttempts  = 10
	maxLoginClients   = 256
	maxRequestBytes   = 1 << 20
	maxSessions       = 4096
)

//go:embed ui/*
var classroomUI embed.FS

type UserSummary struct {
	ID       string `json:"id"`
	Username string `json:"username"`
	Role     Role   `json:"role"`
}

type session struct {
	UserID  string
	CSRF    string
	Expires time.Time
}

type loginAttempts struct {
	Count   int
	Expires time.Time
}

type Server struct {
	store         *Store
	secureCookies bool
	mu            sync.Mutex
	sessions      map[string]session
	loginFailures map[string]loginAttempts
}

func NewServer(store *Store, secureCookies bool) *Server {
	return &Server{
		store:         store,
		secureCookies: secureCookies,
		sessions:      make(map[string]session),
		loginFailures: make(map[string]loginAttempts),
	}
}

func (s *Server) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("X-Content-Type-Options", "nosniff")
	w.Header().Set("X-Frame-Options", "DENY")
	w.Header().Set("Referrer-Policy", "no-referrer")
	w.Header().Set("Content-Security-Policy", "default-src 'none'; script-src 'self'; style-src 'self'; connect-src 'self'; img-src 'self'; base-uri 'none'; form-action 'self'; frame-ancestors 'none'")
	w.Header().Set("Cache-Control", "no-store")
	if s.secureCookies {
		w.Header().Set("Strict-Transport-Security", "max-age=31536000")
	}

	if r.URL.Path == "/" || r.URL.Path == "/classroom" {
		if r.Method != http.MethodGet {
			methodNotAllowed(w, http.MethodGet)
			return
		}
		data, err := classroomUI.ReadFile("ui/index.html")
		if err != nil {
			http.Error(w, "classroom UI unavailable", http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "text/html; charset=utf-8")
		w.WriteHeader(http.StatusOK)
		_, _ = w.Write(data)
		return
	}
	if r.URL.Path == "/app.js" {
		if r.Method != http.MethodGet {
			methodNotAllowed(w, http.MethodGet)
			return
		}
		data, err := classroomUI.ReadFile("ui/app.js")
		if err != nil {
			http.Error(w, "classroom UI unavailable", http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "text/javascript; charset=utf-8")
		w.WriteHeader(http.StatusOK)
		_, _ = w.Write(data)
		return
	}
	if r.URL.Path == "/style.css" {
		if r.Method != http.MethodGet {
			methodNotAllowed(w, http.MethodGet)
			return
		}
		data, err := classroomUI.ReadFile("ui/style.css")
		if err != nil {
			http.Error(w, "classroom UI unavailable", http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "text/css; charset=utf-8")
		w.WriteHeader(http.StatusOK)
		_, _ = w.Write(data)
		return
	}
	if !strings.HasPrefix(r.URL.Path, "/api/") {
		http.NotFound(w, r)
		return
	}
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	if strings.HasPrefix(r.URL.Path, "/api/") {
		w.Header().Set("Cache-Control", "no-store")
	}

	switch r.URL.Path {
	case "/api/bootstrap":
		s.handleBootstrap(w, r)
	case "/api/login":
		s.handleLogin(w, r)
	case "/api/logout":
		s.handleLogout(w, r)
	case "/api/me":
		s.handleMe(w, r)
	case "/api/learners":
		s.handleLearners(w, r)
	case "/api/assignments":
		s.handleAssignments(w, r)
	case "/api/submissions":
		s.handleSubmissions(w, r)
	default:
		writeError(w, http.StatusNotFound, "not found")
	}
}

func (s *Server) handleBootstrap(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
		methodNotAllowedJSON(w, http.MethodPost)
		return
	}
	if !sameOrigin(r) {
		writeError(w, http.StatusForbidden, "same-origin request required")
		return
	}
	if !s.store.NeedsBootstrap() {
		writeError(w, http.StatusConflict, "teacher setup is already complete")
		return
	}
	var request struct {
		Token    string `json:"token"`
		Username string `json:"username"`
		Password string `json:"password"`
	}
	if err := decodeJSON(r, &request); err != nil {
		writeError(w, http.StatusBadRequest, "invalid request")
		return
	}
	user, err := s.store.Bootstrap(request.Token, request.Username, request.Password)
	if err != nil {
		s.writeStoreError(w, err)
		return
	}
	csrf, err := s.newSession(w, user)
	if err != nil {
		writeError(w, http.StatusInternalServerError, "session unavailable")
		return
	}
	writeJSON(w, http.StatusCreated, map[string]any{"user": summarize(user), "csrf_token": csrf})
}

func (s *Server) handleLogin(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
		methodNotAllowedJSON(w, http.MethodPost)
		return
	}
	if !sameOrigin(r) {
		writeError(w, http.StatusForbidden, "same-origin request required")
		return
	}
	client := clientKey(r)
	if !s.allowLogin(client) {
		writeError(w, http.StatusTooManyRequests, "too many sign-in attempts; wait before trying again")
		return
	}
	var request struct {
		Username string `json:"username"`
		Password string `json:"password"`
	}
	if err := decodeJSON(r, &request); err != nil {
		writeError(w, http.StatusBadRequest, "invalid request")
		return
	}
	user, err := s.store.Authenticate(request.Username, request.Password)
	if err != nil {
		writeError(w, http.StatusUnauthorized, "username or password is incorrect")
		return
	}
	s.clearLoginFailures(client)
	csrf, err := s.newSession(w, user)
	if err != nil {
		writeError(w, http.StatusInternalServerError, "session unavailable")
		return
	}
	writeJSON(w, http.StatusOK, map[string]any{"user": summarize(user), "csrf_token": csrf})
}

func (s *Server) handleLogout(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
		methodNotAllowedJSON(w, http.MethodPost)
		return
	}
	if !sameOrigin(r) {
		writeError(w, http.StatusForbidden, "same-origin request required")
		return
	}
	_, key, ok := s.authenticateRequest(r)
	if !ok {
		writeError(w, http.StatusUnauthorized, "sign in required")
		return
	}
	if !s.validCSRF(r, key) {
		writeError(w, http.StatusForbidden, "valid CSRF token required")
		return
	}
	s.mu.Lock()
	delete(s.sessions, key)
	s.mu.Unlock()
	http.SetCookie(w, &http.Cookie{Name: sessionCookieName, Value: "", Path: "/", HttpOnly: true, Secure: s.secureCookies, SameSite: http.SameSiteStrictMode, MaxAge: -1})
	writeJSON(w, http.StatusOK, map[string]string{"status": "signed out"})
}

func (s *Server) handleMe(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodGet {
		methodNotAllowedJSON(w, http.MethodGet)
		return
	}
	current, _, ok := s.authenticateRequest(r)
	if !ok {
		writeError(w, http.StatusUnauthorized, "sign in required")
		return
	}
	user, err := s.store.User(current.UserID)
	if err != nil {
		writeError(w, http.StatusUnauthorized, "sign in required")
		return
	}
	writeJSON(w, http.StatusOK, map[string]any{"user": summarize(user), "csrf_token": current.CSRF, "session_expires_utc": current.Expires.UTC().Format(time.RFC3339Nano)})
}

func (s *Server) handleLearners(w http.ResponseWriter, r *http.Request) {
	current, key, ok := s.authenticated(w, r, r.Method != http.MethodGet)
	if !ok {
		return
	}
	switch r.Method {
	case http.MethodGet:
		if current.Role != RoleTeacher {
			writeError(w, http.StatusForbidden, "teacher role required")
			return
		}
		learners, err := s.store.LearnersFor(current.ID)
		if err != nil {
			s.writeStoreError(w, err)
			return
		}
		result := make([]UserSummary, 0, len(learners))
		for _, user := range learners {
			result = append(result, summarize(user))
		}
		writeJSON(w, http.StatusOK, map[string]any{"learners": result})
	case http.MethodPost:
		if current.Role != RoleTeacher {
			writeError(w, http.StatusForbidden, "teacher role required")
			return
		}
		if !s.validCSRF(r, key) {
			writeError(w, http.StatusForbidden, "valid CSRF token required")
			return
		}
		var request struct {
			Username string `json:"username"`
			Password string `json:"password"`
		}
		if err := decodeJSON(r, &request); err != nil {
			writeError(w, http.StatusBadRequest, "invalid request")
			return
		}
		user, err := s.store.CreateLearner(current.ID, request.Username, request.Password)
		if err != nil {
			s.writeStoreError(w, err)
			return
		}
		writeJSON(w, http.StatusCreated, map[string]any{"learner": summarize(user)})
	default:
		methodNotAllowedJSON(w, http.MethodGet, http.MethodPost)
	}
}

func (s *Server) handleAssignments(w http.ResponseWriter, r *http.Request) {
	current, key, ok := s.authenticated(w, r, r.Method != http.MethodGet)
	if !ok {
		return
	}
	switch r.Method {
	case http.MethodGet:
		assignments, err := s.store.AssignmentsFor(current.ID)
		if err != nil {
			s.writeStoreError(w, err)
			return
		}
		writeJSON(w, http.StatusOK, map[string]any{"assignments": assignments})
	case http.MethodPost:
		if current.Role != RoleTeacher {
			writeError(w, http.StatusForbidden, "teacher role required")
			return
		}
		if !s.validCSRF(r, key) {
			writeError(w, http.StatusForbidden, "valid CSRF token required")
			return
		}
		var request struct {
			LearnerID      string `json:"learner_id"`
			Title          string `json:"title"`
			PlainStatement string `json:"plain_statement"`
			LeanTarget     string `json:"lean_target"`
			Prompt         string `json:"prompt"`
		}
		if err := decodeJSON(r, &request); err != nil {
			writeError(w, http.StatusBadRequest, "invalid request")
			return
		}
		assignment, err := s.store.CreateAssignment(current.ID, request.LearnerID, request.Title, request.PlainStatement, request.LeanTarget, request.Prompt)
		if err != nil {
			s.writeStoreError(w, err)
			return
		}
		writeJSON(w, http.StatusCreated, map[string]any{"assignment": assignment})
	default:
		methodNotAllowedJSON(w, http.MethodGet, http.MethodPost)
	}
}

func (s *Server) handleSubmissions(w http.ResponseWriter, r *http.Request) {
	current, key, ok := s.authenticated(w, r, r.Method != http.MethodGet)
	if !ok {
		return
	}
	switch r.Method {
	case http.MethodGet:
		if current.Role != RoleTeacher {
			writeError(w, http.StatusForbidden, "teacher role required")
			return
		}
		submissions, err := s.store.SubmissionsForTeacher(current.ID)
		if err != nil {
			s.writeStoreError(w, err)
			return
		}
		writeJSON(w, http.StatusOK, map[string]any{"submissions": submissions})
	case http.MethodPost:
		if current.Role != RoleLearner {
			writeError(w, http.StatusForbidden, "learner role required")
			return
		}
		if !s.validCSRF(r, key) {
			writeError(w, http.StatusForbidden, "valid CSRF token required")
			return
		}
		var request struct {
			AssignmentID string `json:"assignment_id"`
			Answer       string `json:"answer"`
		}
		if err := decodeJSON(r, &request); err != nil {
			writeError(w, http.StatusBadRequest, "invalid request")
			return
		}
		submission, err := s.store.Submit(current.ID, request.AssignmentID, request.Answer)
		if err != nil {
			s.writeStoreError(w, err)
			return
		}
		writeJSON(w, http.StatusCreated, map[string]any{"submission": submission})
	default:
		methodNotAllowedJSON(w, http.MethodGet, http.MethodPost)
	}
}

func (s *Server) authenticated(w http.ResponseWriter, r *http.Request, mutation bool) (User, string, bool) {
	current, key, ok := s.authenticateRequest(r)
	if !ok {
		writeError(w, http.StatusUnauthorized, "sign in required")
		return User{}, "", false
	}
	user, err := s.store.User(current.UserID)
	if err != nil {
		writeError(w, http.StatusUnauthorized, "sign in required")
		return User{}, "", false
	}
	if mutation {
		if !sameOrigin(r) {
			writeError(w, http.StatusForbidden, "same-origin request required")
			return User{}, "", false
		}
		if !s.validCSRF(r, key) {
			writeError(w, http.StatusForbidden, "valid CSRF token required")
			return User{}, "", false
		}
	}
	return user, key, true
}

func (s *Server) authenticateRequest(r *http.Request) (session, string, bool) {
	cookie, err := r.Cookie(sessionCookieName)
	if err != nil || cookie.Value == "" {
		return session{}, "", false
	}
	digest := sha256.Sum256([]byte(cookie.Value))
	key := hex.EncodeToString(digest[:])
	s.mu.Lock()
	defer s.mu.Unlock()
	current, ok := s.sessions[key]
	if !ok || !time.Now().Before(current.Expires) {
		delete(s.sessions, key)
		return session{}, "", false
	}
	return current, key, true
}

func (s *Server) newSession(w http.ResponseWriter, user User) (string, error) {
	token := make([]byte, 32)
	csrf := make([]byte, 32)
	if _, err := rand.Read(token); err != nil {
		return "", err
	}
	if _, err := rand.Read(csrf); err != nil {
		return "", err
	}
	tokenText := hex.EncodeToString(token)
	csrfText := hex.EncodeToString(csrf)
	digest := sha256.Sum256([]byte(tokenText))
	key := hex.EncodeToString(digest[:])
	current := session{UserID: user.ID, CSRF: csrfText, Expires: time.Now().Add(sessionLifetime)}
	s.mu.Lock()
	now := time.Now()
	for sessionKey, entry := range s.sessions {
		if !now.Before(entry.Expires) {
			delete(s.sessions, sessionKey)
		}
	}
	if len(s.sessions) >= maxSessions {
		s.mu.Unlock()
		return "", fmt.Errorf("classroom: active session limit reached")
	}
	s.sessions[key] = current
	s.mu.Unlock()
	http.SetCookie(w, &http.Cookie{
		Name: sessionCookieName, Value: tokenText, Path: "/", HttpOnly: true,
		Secure: s.secureCookies, SameSite: http.SameSiteStrictMode,
		Expires: current.Expires, MaxAge: int(sessionLifetime.Seconds()),
	})
	return csrfText, nil
}

func (s *Server) validCSRF(r *http.Request, key string) bool {
	provided := r.Header.Get("X-MathCase-CSRF")
	if provided == "" {
		return false
	}
	s.mu.Lock()
	current, ok := s.sessions[key]
	s.mu.Unlock()
	return ok && subtle.ConstantTimeCompare([]byte(provided), []byte(current.CSRF)) == 1
}

func (s *Server) allowLogin(client string) bool {
	now := time.Now()
	s.mu.Lock()
	defer s.mu.Unlock()
	for key, value := range s.loginFailures {
		if !now.Before(value.Expires) {
			delete(s.loginFailures, key)
		}
	}
	value := s.loginFailures[client]
	if now.After(value.Expires) {
		value = loginAttempts{Expires: now.Add(loginWindow)}
	}
	if value.Count >= loginMaxAttempts {
		return false
	}
	if _, exists := s.loginFailures[client]; !exists && len(s.loginFailures) >= maxLoginClients {
		return false
	}
	value.Count++
	s.loginFailures[client] = value
	return true
}

func (s *Server) clearLoginFailures(client string) {
	s.mu.Lock()
	delete(s.loginFailures, client)
	s.mu.Unlock()
}

func (s *Server) writeStoreError(w http.ResponseWriter, err error) {
	switch {
	case errors.Is(err, ErrInvalid):
		writeError(w, http.StatusBadRequest, err.Error())
	case errors.Is(err, ErrNotFound):
		writeError(w, http.StatusNotFound, "record not found")
	case errors.Is(err, ErrConflict):
		writeError(w, http.StatusConflict, "record conflicts with existing state")
	case errors.Is(err, ErrForbidden):
		writeError(w, http.StatusForbidden, "operation is not allowed")
	default:
		writeError(w, http.StatusInternalServerError, "classroom storage operation failed")
	}
}

func decodeJSON(r *http.Request, destination any) error {
	defer r.Body.Close()
	limited := &io.LimitedReader{R: r.Body, N: maxRequestBytes + 1}
	decoder := json.NewDecoder(limited)
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(destination); err != nil {
		return err
	}
	var trailing any
	if err := decoder.Decode(&trailing); err != io.EOF {
		return fmt.Errorf("trailing JSON content")
	}
	if limited.N == 0 {
		return fmt.Errorf("request exceeds size limit")
	}
	return nil
}

func sameOrigin(r *http.Request) bool {
	origin := r.Header.Get("Origin")
	if origin == "" {
		return false
	}
	parsed, err := url.Parse(origin)
	if err != nil || parsed.User != nil || parsed.Host == "" || parsed.Path != "" || parsed.RawQuery != "" || parsed.Fragment != "" {
		return false
	}
	scheme := "http"
	if r.TLS != nil {
		scheme = "https"
	}
	return strings.EqualFold(parsed.Scheme, scheme) && strings.EqualFold(parsed.Host, r.Host)
}

func clientKey(r *http.Request) string {
	host, _, err := net.SplitHostPort(r.RemoteAddr)
	if err != nil {
		return r.RemoteAddr
	}
	return host
}

func summarize(user User) UserSummary {
	return UserSummary{ID: user.ID, Username: user.Username, Role: user.Role}
}

func writeJSON(w http.ResponseWriter, status int, value any) {
	w.WriteHeader(status)
	_ = json.NewEncoder(w).Encode(value)
}

func writeError(w http.ResponseWriter, status int, message string) {
	writeJSON(w, status, map[string]string{"error": message})
}

func methodNotAllowed(w http.ResponseWriter, methods ...string) {
	w.Header().Set("Allow", strings.Join(methods, ", "))
	http.Error(w, "method not allowed", http.StatusMethodNotAllowed)
}

func methodNotAllowedJSON(w http.ResponseWriter, methods ...string) {
	w.Header().Set("Allow", strings.Join(methods, ", "))
	writeError(w, http.StatusMethodNotAllowed, "method not allowed")
}
