package graphics

import "core:fmt"

// Make the given text black. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: black("hello world");
black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BLACK, input, RESET)
}

// Make the given text red. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: red("hello world");
red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", RED, input, RESET)
}

// Make the given text green. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: green("hello world");
green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", GREEN, input, RESET)
}

// Make the given text yellow. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: yellow("hello world");
yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", YELLOW, input, RESET)
}

// Make the given text blue. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: blue("hello world");
blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BLUE, input, RESET)
}

// Make the given text magenta. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: magenta("hello world");
magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", MAGENTA, input, RESET)
}

// Make the given text cyan. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: cyan("hello world");
cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", CYAN, input, RESET)
}

// Make the given text white. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: white("hello world");
white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", WHITE, input, RESET)
}

// Make the background of the given text white. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_white("hello world");
on_white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_WHITE, input, RESET)
}


// Make the background of the given text black. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_black("hello world");
on_black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BLACK, input, RESET)
}

// Make the background of the given text red. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_red("hello world");
on_red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_RED, input, RESET)
}

// Make the background of the given text green. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_green("hello world");
on_green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_GREEN, input, RESET)
}

// Make the background of the given text yellow. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_yellow("hello world");
on_yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_YELLOW, input, RESET)
}

// Make the background of the given text blue. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_blue("hello world");
on_blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BLUE, input, RESET)
}

// Make the background of the given text magenta. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_magenta("hello world");
on_magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_MAGENTA, input, RESET)
}

// Make the background of the given text cyan. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_cyan("hello world");
on_cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_CYAN, input, RESET)
}

// Make the given text bright white. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_white("hello world");
bright_white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_WHITE, input, RESET)
}

// Make the given text bright black. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_black("hello world");
bright_black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_BLACK, input, RESET)
}

// Make the given text bright red. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_red("hello world");
bright_red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_RED, input, RESET)
}

// Make the given text bright green. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_green("hello world");
bright_green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_GREEN, input, RESET)
}

// Make the given text bright yellow. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_yellow("hello world");
bright_yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_YELLOW, input, RESET)
}

// Make the given text bright blue. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_blue("hello world");
bright_blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_BLUE, input, RESET)
}

// Make the given text bright magenta. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_magenta("hello world");
bright_magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_MAGENTA, input, RESET)
}

// Make the given text bright cyan. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: bright_cyan("hello world");
bright_cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", BRIGHT_CYAN, input, RESET)
}

// Make the background of the given text bright white. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_white("hello world");
on_bright_white :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_WHITE, input, RESET)
}

// Make the background of the given text bright black. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_black("hello world");
on_bright_black :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_BLACK, input, RESET)
}

// Make the background of the given text bright red. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_red("hello world");
on_bright_red :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_RED, input, RESET)
}

// Make the background of the given text bright green. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_green("hello world");
on_bright_green :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_GREEN, input, RESET)
}

// Make the background of the given text bright yellow. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_yellow("hello world");
on_bright_yellow :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_YELLOW, input, RESET)
}

// Make the background of the given text bright blue. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_blue("hello world");
on_bright_blue :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_BLUE, input, RESET)
}

// Make the background of the given text bright magenta. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_magenta("hello world");
on_bright_magenta :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_MAGENTA, input, RESET)
}

// Make the background of the given text bright cyan. A reset is applied to the end of the string to prevent other text from being miscolored upon output.
//
// Usage: on_bright_cyan("hello world");
on_bright_cyan :: proc(input: string) -> string {
    return fmt.aprintf("%s%s%s", ON_BRIGHT_CYAN, input, RESET)
}