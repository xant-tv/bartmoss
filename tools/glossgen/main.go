package main

import (
	"log"
)

func main() {
	if err := run(); err != nil {
		log.Fatalln(err)
	}
}

func run() error {
	r, err := rootCommand()
	if err != nil {
		log.Fatalln(err)
	}

	return r.Execute()
}
