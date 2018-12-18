package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	name, err := os.Hostname()
	if err != nil {
		panic(err)
	}

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "<h1>Hello, I am %s!</h1>", name)
	})

	log.Fatal(http.ListenAndServe(":8080", nil))
}
