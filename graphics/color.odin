package graphics

import "core:fmt"

black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BLACK, input, RESET)
}

red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", RED, input, RESET)
}

green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", GREEN, input, RESET)
}

yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", YELLOW, input, RESET)
}

blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BLUE, input, RESET)
}

magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", MAGENTA, input, RESET)
}

cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", CYAN, input, RESET)
}

white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", WHITE, input, RESET)
}

on_white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_WHITE, input, RESET)
}

on_black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BLACK, input, RESET)
}

on_red :: proc(input: string) -> string {
    return color(ON_RED, input)
}

on_green :: proc(input: string) -> string {
    return color(ON_GREEN, input)
}

on_yellow :: proc(input: string) -> string {
    return color(ON_YELLOW, input)
}

on_blue :: proc(input: string) -> string {
    return color(ON_BLUE, input)
}

on_magenta :: proc(input: string) -> string {
    return color(ON_MAGENTA, input)
}

on_cyan :: proc(input: string) -> string {
    return color(ON_CYAN, input)
}

bright_white :: proc(input: string) -> string {
    return color(BRIGHT_WHITE, input)
}

bright_black :: proc(input: string) -> string {
    return color(BRIGHT_BLACK, input)
}

bright_red :: proc(input: string) -> string {
    return color(BRIGHT_RED, input)
}

bright_green :: proc(input: string) -> string {
    return color(BRIGHT_GREEN, input)
}

bright_yellow :: proc(input: string) -> string {
    return color(BRIGHT_YELLOW, input)
}

bright_blue :: proc(input: string) -> string {
    return color(BRIGHT_BLUE, input)
}

bright_magenta :: proc(input: string) -> string {
    return color(BRIGHT_MAGENTA, input)
}

bright_cyan :: proc(input: string) -> string {
    return color(BRIGHT_CYAN, input)
}

on_bright_black :: proc(input: string) -> string {
    return color(ON_BRIGHT_BLACK, input)
}

on_bright_red :: proc(input: string) -> string {
    return color(ON_BRIGHT_RED, input)
}

on_bright_green :: proc(input: string) -> string {
    return color(ON_BRIGHT_GREEN, input)
}

on_bright_yellow :: proc(input: string) -> string {
    return color(ON_BRIGHT_YELLOW, input)
}

on_bright_blue :: proc(input: string) -> string {
    return color(ON_BRIGHT_BLUE, input)
}

on_bright_magenta :: proc(input: string) -> string {
    return color(ON_BRIGHT_MAGENTA, input)
}

on_bright_cyan :: proc(input: string) -> string {
    return color(ON_BRIGHT_CYAN, input)
}

on_bright_white :: proc(input: string) -> string {
    return color(ON_BRIGHT_WHITE, input)
}