package main

import (
	"fmt"
	"os"
	"runtime"
	"strings"
)

func main() {
	if got, want := runtime.Version(), os.Getenv("PKG_VERSION"); !strings.Contains(got, want) {
		fmt.Printf("Wrong Go version. Currently running: %v, Trying to install: %v\n", got, want)
		os.Exit(1)
	}
}
