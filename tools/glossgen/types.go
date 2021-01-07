package main

import (
	"fmt"
)

type item struct {
	ID          string `csv:"Hash ID"`
	Command     string `csv:"Add item"`
	Category    string `csv:"Category"`
	Name        string `csv:"Name"`
	Quality     string `csv:"Quality"`
	Description string `csv:"Description"`
}

func (i *item) String() string {
	return fmt.Sprintf("%s,%s,%s,%s,%s,%s\n", i.ID, i.Command, i.Category, i.Name, i.Quality, i.Description)
}

type dict struct {
	Objects map[string][]obj
}

type obj struct {
	ID       string // glossary value
	Name     string // glossary key
	Slot     string
	Quality  string
	Category string
}
