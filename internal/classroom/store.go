package classroom

import (
	"crypto/pbkdf2"
	"crypto/rand"
	"crypto/sha256"
	"crypto/subtle"
	"encoding/base64"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"sync"
	"time"
)

const (
	diskSchemaVersion  = 1
	passwordIterations = 310000
	passwordBytes      = 32
	maxStoreBytes      = 16 << 20
)

var (
	ErrNotFound     = errors.New("classroom: record not found")
	ErrForbidden    = errors.New("classroom: operation is not allowed")
	ErrConflict     = errors.New("classroom: record conflicts with existing state")
	ErrInvalid      = errors.New("classroom: invalid input")
	usernamePattern = regexp.MustCompile("^[a-z0-9][a-z0-9._-]{2,31}$")
)

type Role string

const (
	RoleTeacher Role = "teacher"
	RoleLearner Role = "learner"
)

type User struct {
	ID           string `json:"id"`
	Username     string `json:"username"`
	Role         Role   `json:"role"`
	Salt         string `json:"salt"`
	PasswordHash string `json:"password_hash"`
	CreatedAt    string `json:"created_at_utc"`
}

type Assignment struct {
	ID             string `json:"id"`
	TeacherID      string `json:"teacher_id"`
	LearnerID      string `json:"learner_id"`
	Title          string `json:"title"`
	PlainStatement string `json:"plain_statement"`
	LeanTarget     string `json:"lean_target"`
	Prompt         string `json:"prompt"`
	CreatedAt      string `json:"created_at_utc"`
}

type Submission struct {
	ID           string `json:"id"`
	AssignmentID string `json:"assignment_id"`
	LearnerID    string `json:"learner_id"`
	Answer       string `json:"answer"`
	CreatedAt    string `json:"created_at_utc"`
}

type diskState struct {
	SchemaVersion      int                   `json:"schema_version"`
	BootstrapTokenHash string                `json:"bootstrap_token_sha256,omitempty"`
	Users              map[string]User       `json:"users"`
	Assignments        map[string]Assignment `json:"assignments"`
	Submissions        []Submission          `json:"submissions"`
}

type Store struct {
	mu    sync.Mutex
	path  string
	state diskState
}

func NewStore(path string) (*Store, error) {
	if strings.TrimSpace(path) == "" {
		return nil, fmt.Errorf("%w: store path is empty", ErrInvalid)
	}
	abs, err := filepath.Abs(path)
	if err != nil {
		return nil, fmt.Errorf("classroom: resolve store path: %w", err)
	}
	if err := os.MkdirAll(filepath.Dir(abs), 0700); err != nil {
		return nil, fmt.Errorf("classroom: create store directory: %w", err)
	}
	store := &Store{path: abs}
	info, err := os.Lstat(abs)
	if errors.Is(err, os.ErrNotExist) {
		store.state = emptyState()
		if err := store.persist(store.state); err != nil {
			return nil, err
		}
		return store, nil
	}
	if err != nil {
		return nil, fmt.Errorf("classroom: inspect store: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
		return nil, fmt.Errorf("%w: store path must be a regular non-symlink file", ErrInvalid)
	}
	if info.Size() > maxStoreBytes {
		return nil, fmt.Errorf("%w: store exceeds size limit", ErrInvalid)
	}
	data, err := os.ReadFile(abs)
	if err != nil {
		return nil, fmt.Errorf("classroom: read store: %w", err)
	}
	decoder := json.NewDecoder(strings.NewReader(string(data)))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&store.state); err != nil {
		return nil, fmt.Errorf("classroom: decode store: %w", err)
	}
	var trailing any
	if err := decoder.Decode(&trailing); err != io.EOF {
		return nil, fmt.Errorf("%w: trailing store content", ErrInvalid)
	}
	if store.state.SchemaVersion != diskSchemaVersion || store.state.Users == nil ||
		store.state.Assignments == nil || store.state.Submissions == nil {
		return nil, fmt.Errorf("%w: unsupported or incomplete store", ErrInvalid)
	}
	return store, nil
}

func emptyState() diskState {
	return diskState{
		SchemaVersion: diskSchemaVersion,
		Users:         make(map[string]User),
		Assignments:   make(map[string]Assignment),
		Submissions:   make([]Submission, 0),
	}
}

func (s *Store) cloneState() diskState {
	next := s.state
	next.Users = make(map[string]User, len(s.state.Users))
	for id, user := range s.state.Users {
		next.Users[id] = user
	}
	next.Assignments = make(map[string]Assignment, len(s.state.Assignments))
	for id, assignment := range s.state.Assignments {
		next.Assignments[id] = assignment
	}
	next.Submissions = append([]Submission(nil), s.state.Submissions...)
	return next
}

func (s *Store) commit(next diskState) error {
	if err := s.persist(next); err != nil {
		return err
	}
	s.state = next
	return nil
}

func (s *Store) persist(state diskState) error {
	data, err := json.MarshalIndent(state, "", "  ")
	if err != nil {
		return fmt.Errorf("classroom: encode store: %w", err)
	}
	if len(data) > maxStoreBytes {
		return fmt.Errorf("%w: store exceeds size limit", ErrInvalid)
	}
	dir := filepath.Dir(s.path)
	tmp, err := os.CreateTemp(dir, ".mathcase-classroom-*.tmp")
	if err != nil {
		return fmt.Errorf("classroom: create temporary store: %w", err)
	}
	tmpPath := tmp.Name()
	defer os.Remove(tmpPath)
	if err := tmp.Chmod(0600); err != nil {
		_ = tmp.Close()
		return fmt.Errorf("classroom: protect temporary store: %w", err)
	}
	if _, err := tmp.Write(data); err != nil {
		_ = tmp.Close()
		return fmt.Errorf("classroom: write store: %w", err)
	}
	if err := tmp.Sync(); err != nil {
		_ = tmp.Close()
		return fmt.Errorf("classroom: sync store: %w", err)
	}
	if err := tmp.Close(); err != nil {
		return fmt.Errorf("classroom: close store: %w", err)
	}
	if err := os.Rename(tmpPath, s.path); err != nil {
		return fmt.Errorf("classroom: replace store: %w", err)
	}
	return nil
}

func (s *Store) NeedsBootstrap() bool {
	s.mu.Lock()
	defer s.mu.Unlock()
	return len(s.state.Users) == 0
}

func (s *Store) InitializeBootstrapToken(token string) error {
	if len(token) < 32 || len(token) > 256 {
		return fmt.Errorf("%w: bootstrap token length is invalid", ErrInvalid)
	}
	hash := sha256.Sum256([]byte(token))
	encoded := hex.EncodeToString(hash[:])
	s.mu.Lock()
	defer s.mu.Unlock()
	if len(s.state.Users) > 0 {
		return ErrConflict
	}
	if s.state.BootstrapTokenHash != "" && subtle.ConstantTimeCompare([]byte(s.state.BootstrapTokenHash), []byte(encoded)) != 1 {
		return ErrConflict
	}
	next := s.cloneState()
	next.BootstrapTokenHash = encoded
	return s.commit(next)
}

func (s *Store) Bootstrap(token, username, password string) (User, error) {
	username, err := normalizeUsername(username)
	if err != nil {
		return User{}, err
	}
	hash := sha256.Sum256([]byte(token))
	tokenHash := hex.EncodeToString(hash[:])
	s.mu.Lock()
	authorized := len(s.state.Users) == 0 && s.state.BootstrapTokenHash != "" &&
		subtle.ConstantTimeCompare([]byte(s.state.BootstrapTokenHash), []byte(tokenHash)) == 1
	s.mu.Unlock()
	if !authorized {
		return User{}, ErrForbidden
	}
	salt, passwordHash, err := derivePassword(password)
	if err != nil {
		return User{}, err
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	if len(s.state.Users) != 0 || s.state.BootstrapTokenHash == "" ||
		subtle.ConstantTimeCompare([]byte(s.state.BootstrapTokenHash), []byte(tokenHash)) != 1 {
		return User{}, ErrForbidden
	}
	id, err := newID("teacher")
	if err != nil {
		return User{}, err
	}
	user := User{
		ID: id, Username: username, Role: RoleTeacher,
		Salt:         base64.RawStdEncoding.EncodeToString(salt),
		PasswordHash: base64.RawStdEncoding.EncodeToString(passwordHash),
		CreatedAt:    time.Now().UTC().Format(time.RFC3339Nano),
	}
	next := s.cloneState()
	next.Users[id] = user
	next.BootstrapTokenHash = ""
	if err := s.commit(next); err != nil {
		return User{}, err
	}
	return user, nil
}

func (s *Store) Authenticate(username, password string) (User, error) {
	username, err := normalizeUsername(username)
	if err != nil {
		return User{}, ErrForbidden
	}
	s.mu.Lock()
	var user User
	for _, candidate := range s.state.Users {
		if candidate.Username == username {
			user = candidate
			break
		}
	}
	s.mu.Unlock()
	if user.ID == "" {
		// Keep unknown-user and wrong-password checks close in cost.
		dummySalt := []byte("MathCase-classroom-invalid-user")
		_, _ = pbkdf2.Key(sha256.New, password, dummySalt, passwordIterations, passwordBytes)
		return User{}, ErrForbidden
	}
	salt, err := base64.RawStdEncoding.DecodeString(user.Salt)
	if err != nil {
		return User{}, fmt.Errorf("classroom: decode password salt: %w", err)
	}
	want, err := base64.RawStdEncoding.DecodeString(user.PasswordHash)
	if err != nil {
		return User{}, fmt.Errorf("classroom: decode password hash: %w", err)
	}
	got, err := pbkdf2.Key(sha256.New, password, salt, passwordIterations, passwordBytes)
	if err != nil {
		return User{}, err
	}
	if subtle.ConstantTimeCompare(got, want) != 1 {
		return User{}, ErrForbidden
	}
	return user, nil
}

func (s *Store) CreateLearner(teacherID, username, password string) (User, error) {
	username, err := normalizeUsername(username)
	if err != nil {
		return User{}, err
	}
	salt, passwordHash, err := derivePassword(password)
	if err != nil {
		return User{}, err
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	if user, ok := s.state.Users[teacherID]; !ok || user.Role != RoleTeacher {
		return User{}, ErrForbidden
	}
	for _, user := range s.state.Users {
		if user.Username == username {
			return User{}, ErrConflict
		}
	}
	id, err := newID("learner")
	if err != nil {
		return User{}, err
	}
	user := User{
		ID: id, Username: username, Role: RoleLearner,
		Salt:         base64.RawStdEncoding.EncodeToString(salt),
		PasswordHash: base64.RawStdEncoding.EncodeToString(passwordHash),
		CreatedAt:    time.Now().UTC().Format(time.RFC3339Nano),
	}
	next := s.cloneState()
	next.Users[id] = user
	if err := s.commit(next); err != nil {
		return User{}, err
	}
	return user, nil
}

func (s *Store) LearnersFor(teacherID string) ([]User, error) {
	s.mu.Lock()
	defer s.mu.Unlock()
	if user, ok := s.state.Users[teacherID]; !ok || user.Role != RoleTeacher {
		return nil, ErrForbidden
	}
	result := make([]User, 0)
	for _, user := range s.state.Users {
		if user.Role == RoleLearner {
			result = append(result, user)
		}
	}
	return result, nil
}

func (s *Store) CreateAssignment(teacherID, learnerID, title, plain, lean, prompt string) (Assignment, error) {
	if err := validateText(title, 120, false); err != nil {
		return Assignment{}, err
	}
	if err := validateText(plain, 4000, false); err != nil {
		return Assignment{}, err
	}
	if err := validateText(lean, 16000, false); err != nil {
		return Assignment{}, err
	}
	if err := validateText(prompt, 4000, true); err != nil {
		return Assignment{}, err
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	teacher, ok := s.state.Users[teacherID]
	if !ok || teacher.Role != RoleTeacher {
		return Assignment{}, ErrForbidden
	}
	learner, ok := s.state.Users[learnerID]
	if !ok || learner.Role != RoleLearner {
		return Assignment{}, ErrNotFound
	}
	id, err := newID("assignment")
	if err != nil {
		return Assignment{}, err
	}
	assignment := Assignment{
		ID: id, TeacherID: teacherID, LearnerID: learnerID, Title: title,
		PlainStatement: plain, LeanTarget: lean, Prompt: prompt,
		CreatedAt: time.Now().UTC().Format(time.RFC3339Nano),
	}
	next := s.cloneState()
	next.Assignments[id] = assignment
	if err := s.commit(next); err != nil {
		return Assignment{}, err
	}
	return assignment, nil
}

func (s *Store) AssignmentsFor(userID string) ([]Assignment, error) {
	s.mu.Lock()
	defer s.mu.Unlock()
	user, ok := s.state.Users[userID]
	if !ok {
		return nil, ErrForbidden
	}
	result := make([]Assignment, 0)
	for _, assignment := range s.state.Assignments {
		if user.Role == RoleTeacher && assignment.TeacherID == userID ||
			user.Role == RoleLearner && assignment.LearnerID == userID {
			result = append(result, assignment)
		}
	}
	return result, nil
}

func (s *Store) Submit(learnerID, assignmentID, answer string) (Submission, error) {
	if err := validateText(answer, 16000, false); err != nil {
		return Submission{}, err
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	learner, ok := s.state.Users[learnerID]
	if !ok || learner.Role != RoleLearner {
		return Submission{}, ErrForbidden
	}
	assignment, ok := s.state.Assignments[assignmentID]
	if !ok || assignment.LearnerID != learnerID {
		return Submission{}, ErrNotFound
	}
	id, err := newID("submission")
	if err != nil {
		return Submission{}, err
	}
	submission := Submission{
		ID: id, AssignmentID: assignmentID, LearnerID: learnerID, Answer: answer,
		CreatedAt: time.Now().UTC().Format(time.RFC3339Nano),
	}
	next := s.cloneState()
	next.Submissions = append(next.Submissions, submission)
	if err := s.commit(next); err != nil {
		return Submission{}, err
	}
	return submission, nil
}

func (s *Store) SubmissionsForTeacher(teacherID string) ([]Submission, error) {
	s.mu.Lock()
	defer s.mu.Unlock()
	teacher, ok := s.state.Users[teacherID]
	if !ok || teacher.Role != RoleTeacher {
		return nil, ErrForbidden
	}
	owned := make(map[string]bool)
	for id, assignment := range s.state.Assignments {
		if assignment.TeacherID == teacherID {
			owned[id] = true
		}
	}
	result := make([]Submission, 0)
	for _, submission := range s.state.Submissions {
		if owned[submission.AssignmentID] {
			result = append(result, submission)
		}
	}
	return result, nil
}

func (s *Store) User(userID string) (User, error) {
	s.mu.Lock()
	defer s.mu.Unlock()
	user, ok := s.state.Users[userID]
	if !ok {
		return User{}, ErrNotFound
	}
	return user, nil
}

func (s *Store) NeedsBootstrapToken() bool {
	s.mu.Lock()
	defer s.mu.Unlock()
	return len(s.state.Users) == 0 && s.state.BootstrapTokenHash == ""
}

func derivePassword(password string) ([]byte, []byte, error) {
	if len(password) < 12 || len(password) > 1024 {
		return nil, nil, fmt.Errorf("%w: password must be 12 to 1024 bytes", ErrInvalid)
	}
	salt := make([]byte, 16)
	if _, err := rand.Read(salt); err != nil {
		return nil, nil, err
	}
	hash, err := pbkdf2.Key(sha256.New, password, salt, passwordIterations, passwordBytes)
	return salt, hash, err
}

func normalizeUsername(username string) (string, error) {
	username = strings.ToLower(strings.TrimSpace(username))
	if !usernamePattern.MatchString(username) {
		return "", fmt.Errorf("%w: username must be 3-32 lowercase letters, digits, dots, underscores, or hyphens", ErrInvalid)
	}
	return username, nil
}

func validateText(value string, max int, allowEmpty bool) error {
	if len(value) > max || !allowEmpty && strings.TrimSpace(value) == "" {
		return fmt.Errorf("%w: text field is empty or exceeds %d bytes", ErrInvalid, max)
	}
	return nil
}

func newID(prefix string) (string, error) {
	value := make([]byte, 16)
	if _, err := rand.Read(value); err != nil {
		return "", err
	}
	return prefix + "_" + hex.EncodeToString(value), nil
}
