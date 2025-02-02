package color

import "core:fmt"

bold :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BOLD, input, BOLD_RESET)
}

dim :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", DIM, input, DIM_RESET)
}

italic :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ITALIC, input, ITALIC_RESET)
}

underline :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", UNDERLINE, input, UNDERLINE_RESET)
}

blinking :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BLINKING, input, BLINKING_RESET)
}

inverse :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", INVERSE, input, INVERSE_RESET)
}

hidden :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", HIDDEN, input, HIDDEN_RESET)
}

strikethrough :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", STRIKETHROUGH, input, STRIKETHROUGH_RESET)
}

// Alternative style names

faint :: proc(input: string) -> string {
    return dim(input)
}

reverse :: proc(input: string) -> string {
    return inverse(input)
}

invisible :: proc(input: string) -> string {
    return hidden(input)
}