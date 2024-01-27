package metadata

var (
	applicationName string = "antiphreeze"
	applicationDesc string = "Check sites"
	applicationAuth string = "The Dark Society"
)

func ApplicationName() string {
	return applicationName
}

func ApplicationDesc() string {
	return applicationDesc
}

func ApplicationAuth() string {
	return applicationAuth
}
