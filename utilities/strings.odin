package utilities

import "core:fmt"

// Removes all leading and trailing ANSI escape codes from the input string.
strip_ansi :: proc(input: string) -> string {

}

// Adds padding to the left side of the input string until it reaches the specified length.
pad_left :: proc(input: string, length: int, pad: string) -> string {}

// Adds padding to the right side of the input string until it reaches the specified length.
pad_right :: proc(input: string, length: int, pad: string) -> string {}

// Adds padding to both sides of the input string until it reaches the specified length.
pad :: proc(input: string, length: int, pad: string) -> string {}

// Wraps the input text to the specified width, breaking lines at word boundaries.
wrap_text :: proc(input: string, width: int) -> string {}

// Truncates the input text to the specified width, adding an ellipsis if the text is longer than the width.
truncate_text :: proc(input: string, width: int, ellipsis := "...") -> string {}

