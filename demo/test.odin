package main

import color ".."
import "core:fmt"

main :: proc() {
    s := color.color("Hello, World!", color.Color.bright_red)
    fmt.println(s)
}