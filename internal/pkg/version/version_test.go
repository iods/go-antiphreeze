package version

import (
	"testing"

	"github.com/iods/go-antiphreeze/internal/pkg/version"
)

func VersionTest(t *testing.T) {

	if get := version.Version(); get != "unknown" {
		t.Errorf("Expected Version to be 'unknown', but response was '%s'", get)
	}
}

func RevisionTest(t *testing.T) {
	if get := version.Revision(); get != "unknown" {
		t.Errorf("Expected revision to be 'unknown', but response was '%s'", get)
	}
}
