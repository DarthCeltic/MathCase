package solver

import "strings"

var localEnvironmentAllowlist = map[string]struct{}{
	"APPDATA":      {},
	"COMSPEC":      {},
	"HOMEDRIVE":    {},
	"HOMEPATH":     {},
	"LANG":         {},
	"LC_ALL":       {},
	"LOCALAPPDATA": {},
	"PATH":         {},
	"PATHEXT":      {},
	"PROGRAMDATA":  {},
	"SYSTEMROOT":   {},
	"TEMP":         {},
	"TMP":          {},
	"TMPDIR":       {},
	"USERPROFILE":  {},
	"WINDIR":       {},
}

// localToolEnvironment removes provider credentials and unrelated application
// settings from child processes used by local Lean/Pantograph adapters.
func localToolEnvironment(source []string) []string {
	result := make([]string, 0, len(source))
	for _, entry := range source {
		key, _, ok := strings.Cut(entry, "=")
		if !ok {
			continue
		}
		if _, allowed := localEnvironmentAllowlist[strings.ToUpper(key)]; allowed {
			result = append(result, entry)
		}
	}
	return result
}
