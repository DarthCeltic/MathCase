package main

import (
	"context"
	"crypto/rand"
	"encoding/hex"
	"flag"
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
	"os/signal"
	"path/filepath"
	"strings"
	"syscall"
	"time"

	"github.com/DarthCeltic/MathCase/internal/classroom"
)

func runClassroomServe(args []string, stdout, stderr io.Writer) int {
	configRoot, err := os.UserConfigDir()
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: locate private config directory: %v\n", err)
		return 1
	}
	root := filepath.Join(configRoot, "MathCase", "classroom")
	flags := flag.NewFlagSet("classroom-serve", flag.ContinueOnError)
	flags.SetOutput(stderr)
	listen := flags.String("listen", "127.0.0.1:55136", "HTTP listen address; non-loopback requires TLS")
	dataPath := flags.String("data", filepath.Join(root, "classroom.json"), "private classroom data file")
	tokenPath := flags.String("bootstrap-token-file", filepath.Join(root, "bootstrap.token"), "one-time first-teacher token file")
	certPath := flags.String("tls-cert", "", "TLS certificate for non-loopback use")
	keyPath := flags.String("tls-key", "", "TLS private key for non-loopback use")
	if err := flags.Parse(args); err != nil {
		return 2
	}
	if flags.NArg() != 0 || *listen == "" || *dataPath == "" || *tokenPath == "" {
		fmt.Fprintln(stderr, "mathcase classroom-serve: invalid or extra arguments")
		return 2
	}
	if (*certPath == "") != (*keyPath == "") {
		fmt.Fprintln(stderr, "mathcase classroom-serve: set both --tls-cert and --tls-key")
		return 2
	}
	if !loopbackAddress(*listen) && (*certPath == "" || *keyPath == "") {
		fmt.Fprintln(stderr, "mathcase classroom-serve: non-loopback address requires HTTPS certificate and key")
		return 2
	}

	store, err := classroom.NewStore(*dataPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase classroom-serve: open private data store: %v\n", err)
		return 1
	}
	if store.NeedsBootstrap() {
		if store.NeedsBootstrapToken() {
			token, tokenErr := readOrCreateBootstrapToken(*tokenPath)
			if tokenErr == nil {
				tokenErr = store.InitializeBootstrapToken(token)
			}
			if tokenErr != nil {
				fmt.Fprintf(stderr, "mathcase classroom-serve: prepare one-time bootstrap token: %v\n", tokenErr)
				return 1
			}
		} else if _, tokenErr := readBootstrapToken(*tokenPath); tokenErr != nil {
			fmt.Fprintf(stderr, "mathcase classroom-serve: stored bootstrap token is unavailable; restore the original private token file: %v\n", tokenErr)
			return 1
		}
		fmt.Fprintf(stderr, "First-teacher setup is available once. Read the token from the private file: %s\n", *tokenPath)
	}

	secure := *certPath != ""
	handler := classroom.NewServer(store, secure)
	server := &http.Server{
		Addr:              *listen,
		Handler:           handler,
		ReadHeaderTimeout: 5 * time.Second,
		ReadTimeout:       20 * time.Second,
		WriteTimeout:      30 * time.Second,
		IdleTimeout:       60 * time.Second,
		MaxHeaderBytes:    1 << 20,
	}
	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt, syscall.SIGTERM)
	defer stop()
	go func() {
		<-ctx.Done()
		shutdownCtx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
		defer cancel()
		_ = server.Shutdown(shutdownCtx)
	}()

	scheme := "http"
	if secure {
		scheme = "https"
	}
	fmt.Fprintf(stdout, "MathCase private classroom listening at %s://%s\n", scheme, *listen)
	var serveErr error
	if secure {
		serveErr = server.ListenAndServeTLS(*certPath, *keyPath)
	} else {
		serveErr = server.ListenAndServe()
	}
	if serveErr != nil && serveErr != http.ErrServerClosed {
		fmt.Fprintf(stderr, "mathcase classroom-serve: server stopped: %v\n", serveErr)
		return 1
	}
	return 0
}

func loopbackAddress(address string) bool {
	host, _, err := net.SplitHostPort(address)
	if err != nil {
		return false
	}
	if strings.EqualFold(host, "localhost") {
		return true
	}
	ip := net.ParseIP(host)
	return ip != nil && ip.IsLoopback()
}

func readOrCreateBootstrapToken(path string) (string, error) {
	absolute, err := filepath.Abs(path)
	if err != nil {
		return "", err
	}
	if err := os.MkdirAll(filepath.Dir(absolute), 0700); err != nil {
		return "", err
	}
	if info, err := os.Lstat(absolute); err == nil {
		if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
			return "", fmt.Errorf("token path must be a regular non-symlink file")
		}
		data, err := os.ReadFile(absolute)
		if err != nil {
			return "", err
		}
		token := strings.TrimSpace(string(data))
		if len(token) < 32 {
			return "", fmt.Errorf("existing token file is too short")
		}
		return token, nil
	} else if !os.IsNotExist(err) {
		return "", err
	}
	random := make([]byte, 32)
	if _, err := rand.Read(random); err != nil {
		return "", err
	}
	token := hex.EncodeToString(random)
	file, err := os.OpenFile(absolute, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
	if err != nil {
		if os.IsExist(err) {
			return readBootstrapToken(absolute)
		}
		return "", err
	}
	_, writeErr := io.WriteString(file, token+"\n")
	if writeErr == nil {
		writeErr = file.Sync()
	}
	closeErr := file.Close()
	if writeErr != nil {
		return "", writeErr
	}
	if closeErr != nil {
		return "", closeErr
	}
	return token, nil
}

func readBootstrapToken(path string) (string, error) {
	absolute, err := filepath.Abs(path)
	if err != nil {
		return "", err
	}
	info, err := os.Lstat(absolute)
	if err != nil {
		return "", err
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
		return "", fmt.Errorf("token path must be a regular non-symlink file")
	}
	data, err := os.ReadFile(absolute)
	if err != nil {
		return "", err
	}
	token := strings.TrimSpace(string(data))
	if len(token) < 32 || len(token) > 256 {
		return "", fmt.Errorf("token file length is invalid")
	}
	return token, nil
}
