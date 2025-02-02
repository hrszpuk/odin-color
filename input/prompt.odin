package input 

import "core:bufio"
import "core:fmt"
import "core:os"

// Sends a prompt to the user and returns the user's response.
prompt :: proc(prompt: string) -> string {

    fmt.println(prompt)
    response: string

    // init reader 
    reader: ^bufio.Reader 
    bufio.reader_init(reader)

}

// Sends a prompt to the user with options and returns whether the user's response is one of the options.
prompt_options :: proc(prompt: string, options: []string) -> bool {}