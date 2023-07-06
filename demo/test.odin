package main

import ".."
import "core:fmt"

main :: proc() {
    s := color("Hello, World!", Color.bright_red)
    fmt.println(s)
}