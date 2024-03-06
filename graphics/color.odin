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
    return fmt.aprintf("%s%s%s", ON_RED, input, RESET)
}

on_green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_GREEN, input, RESET)
}

on_yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_YELLOW, input, RESET)
}

on_blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BLUE, input, RESET)
}

on_magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_MAGENTA, input, RESET)
}

on_cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_CYAN, input, RESET)
}

bright_white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_WHITE, input, RESET)
}

bright_black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_BLACK, input, RESET)
}

bright_red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_RED, input, RESET)
}

bright_green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_GREEN, input, RESET)
}

bright_yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_YELLOW, input, RESET)
}

bright_blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_BLUE, input, RESET)
}

bright_magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_MAGENTA, input, RESET)
}

bright_cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_CYAN, input, RESET)
}

on_bright_black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_BLACK, input, RESET)
}

on_bright_red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_RED, input, RESET)
}

on_bright_green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_GREEN, input, RESET)
}

on_bright_yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_YELLOW, input, RESET)
}

on_bright_blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_BLUE, input, RESET)
}

on_bright_magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_MAGENTA, input, RESET)
}

on_bright_cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_CYAN, input, RESET)
}

on_bright_white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_WHITE, input, RESET)
}