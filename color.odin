package color

import "core:fmt"

Color :: enum {
    reset = 0,
    black = 30,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    bright_black = 90,
    bright_red,
    bright_green,
    bright_yellow,
    bright_blue,
    bright_magenta,
    bright_cyan,
    bright_white,
}

color :: proc(input: string, color: Color, foreground := true, reset := true) -> string {
    color := foreground ? int(color) : int(color)+10
    reset := reset ? "\033[0m" : ""
    return fmt.aprintf("\033[%dm%s%s",color, input, reset)
}

main :: proc() {
    s := color("Hello, World!", Color.bright_red, false, false)
    fmt.println(s)
    fmt.println("aqaaaaa")
}