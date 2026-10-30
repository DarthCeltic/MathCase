package main

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
)

type dossierStoreOutput struct {
	SchemaVersion string `json:"schema_version"`
	Status        string `json:"status"`
	CaseID        string `json:"case_id"`
	ContentSHA256 string `json:"content_sha256"`
	RelativePath  string `json:"relative_path"`
	Size          int64  `json:"size"`
}

func runDossierStore(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-store", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "incomplete or complete M8 dossier JSON")
	storeRoot := flags.String("store-root", "", "private local root for content-addressed dossier snapshots")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*storeRoot) == "" {
		fmt.Fprintln(stderr, "dossier-store requires --dossier FILE and --store-root DIR and accepts no positional arguments")
		return 2
	}
	input, err := readRegularInput(*dossierPath, "dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read dossier: %v\n", err)
		return 2
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(input, &dossier, "dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode dossier: %v\n", err)
		return 2
	}
	store, err := persistence.NewDossierStore(*storeRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open dossier store: %v\n", err)
		return 2
	}
	receipt, err := store.Put(context.Background(), dossier)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: persist dossier: %v\n", err)
		return 1
	}
	output := dossierStoreOutput{
		SchemaVersion: "mathcase-dossier-store-receipt-v1", Status: "STORED_IMMUTABLY",
		CaseID: receipt.CaseID, ContentSHA256: receipt.ContentSHA256,
		RelativePath: receipt.RelativePath, Size: receipt.Size,
	}
	encoded, err := json.Marshal(output)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode dossier store receipt: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write dossier store receipt: %v\n", err)
		return 2
	}
	return 0
}
