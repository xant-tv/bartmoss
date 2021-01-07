package main

import (
	"fmt"
	"os"
	"strings"

	csv "github.com/gocarina/gocsv"
	"github.com/spf13/cobra"
)

const (
	desc = `
Application entrypoint that accepts file to parse, to generate LUA glossary

# Example
$ glossgen --file=../data/itemlist.csv --target=glossary

Flags: 
--file, -f : path to input csv file
--target, -t : path to output Lua file`

	fileFlag   = "file"
	targetFlag = "target"
)

func rootCommand() (*cobra.Command, error) {
	var rootCmd = &cobra.Command{
		Use:   "glossgen",
		Short: "glossgen - generate LUA glossary from item csv",
		Long:  desc,
		RunE:  gen,
	}

	rootCmd.Flags().StringP(fileFlag, "f", "", "the path to csv file to parse")
	if err := rootCmd.MarkFlagRequired(fileFlag); err != nil {
		return nil, err
	}

	rootCmd.Flags().StringP(targetFlag, "t", "", "the output path to Lua glossary")
	if err := rootCmd.MarkFlagRequired(targetFlag); err != nil {
		return nil, err
	}

	return rootCmd, nil
}

func getFile(r *cobra.Command) (string, error) {
	f, err := r.Flags().GetString(fileFlag)
	if err != nil {
		return "", err
	}

	return f, nil
}

func getTarget(r *cobra.Command) (string, error) {
	t, err := r.Flags().GetString(targetFlag)
	if err != nil {
		return "", err
	}

	return t, nil
}

func gen(cmd *cobra.Command, args []string) error {
	file, err := getFile(cmd)
	if err != nil {
		return fmt.Errorf("failed to get file flag value: %w", err)
	}

	target, err := getTarget(cmd)
	if err != nil {
		return fmt.Errorf("failed to get target flag value: %w", err)
	}

	data, err := read(file)
	if err != nil {
		return fmt.Errorf("failed to get read source file: %w", err)
	}

	g, err := buildGlossary(data)
	if err != nil {
		return fmt.Errorf("failed to build glossary data: %w", err)
	}

	return newGlossary(target, g)
}

func read(file string) ([]*item, error) {
	f, err := os.Open(file)
	if err != nil {
		return nil, fmt.Errorf("failed to open file %s: %w", file, err)
	}

	var out []*item
	if err := csv.UnmarshalFile(f, &out); err != nil {
		return nil, fmt.Errorf("failed to unmarshal file %s: %w", file, err)
	}

	if err := f.Close(); err != nil {
		return nil, fmt.Errorf("failed to close file %s: %w", file, err)
	}

	return out, nil
}

func buildGlossary(data []*item) (dict, error) {
	d := dict{
		Objects: map[string][]obj{},
	}

	for _, elem := range data {
		q, ok := d.Objects[elem.Quality]
		if !ok {
			d.Objects[elem.Quality] = make([]obj, 0)
		}

		cat, slot := parseCategory(elem.Category)

		d.Objects[elem.Quality] = append(q, obj{
			ID:       elem.ID,
			Name:     elem.Name,
			Slot:     slot,
			Quality:  elem.Quality,
			Category: cat,
		})
	}

	return d, nil
}

func parseCategory(category string) (string, string) {
	ss := strings.Split(strings.ReplaceAll(category, " ", ""), "-")
	if len(ss) == 2 {
		// category, slot
		return ss[0], ss[1]
	}

	return ss[0], ""
}
