package main 

import color ".."
import "core:fmt"

main :: proc() {
    using color
    fg_colors := [?]proc(string)->string{
        black, red, green, yellow, blue, magenta, cyan, white,
        bright_black, bright_red, bright_green, bright_yellow, bright_blue, bright_magenta, bright_cyan, bright_white,
    }
    bg_colors := [?]proc(string)->string{
        on_black, on_red, on_green, on_yellow, on_blue, on_magenta, on_cyan, on_white,
        on_bright_black, on_bright_red, on_bright_green, on_bright_yellow, on_bright_blue, on_bright_magenta, on_bright_cyan, on_bright_white,
    }
    for bg in bg_colors {
        for fg in fg_colors {
            fmt.printf("%s ", bg(fg("odin")))
        }
        fmt.println()
    }
}