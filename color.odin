package color

import "core:fmt"

@(private="package")
ESC :: "\033["

RESET           :: ESC + "0m"
BLACK           :: ESC + "30m"
RED             :: ESC + "31m"
GREEN           :: ESC + "32m"
YELLOW          :: ESC + "33m"
BLUE            :: ESC + "34m"
MAGENTA         :: ESC + "35m"
CYAN            :: ESC + "36m"
WHITE           :: ESC + "37m"

ON_BLACK           :: ESC + "40m"
ON_RED             :: ESC + "41m"
ON_GREEN           :: ESC + "42m"
ON_YELLOW          :: ESC + "43m"
ON_BLUE            :: ESC + "44m"
ON_MAGENTA         :: ESC + "45m"
ON_CYAN            :: ESC + "46m"
ON_WHITE           :: ESC + "47m"

BRIGHT_BLACK    :: ESC + "90m"
BRIGHT_RED      :: ESC + "91m"
BRIGHT_GREEN    :: ESC + "92m"
BRIGHT_YELLOW   :: ESC + "93m"
BRIGHT_BLUE     :: ESC + "94m"
BRIGHT_MAGENTA  :: ESC + "95m"
BRIGHT_CYAN     :: ESC + "96m"
BRIGHT_WHITE    :: ESC + "97m"

ON_BRIGHT_BLACK    :: ESC + "100m"
ON_BRIGHT_RED      :: ESC + "101m"
ON_BRIGHT_GREEN    :: ESC + "102m"
ON_BRIGHT_YELLOW   :: ESC + "103m"
ON_BRIGHT_BLUE     :: ESC + "104m"
ON_BRIGHT_MAGENTA  :: ESC + "105m"
ON_BRIGHT_CYAN     :: ESC + "106m"
ON_BRIGHT_WHITE    :: ESC + "107m"

// taken from hrszpuk/odin-color:dev:
// Styles

BOLD                :: ESC + "1m"
DIM                 :: ESC + "2m"
ITALIC              :: ESC + "3m"
UNDERLINE           :: ESC + "4m"
BLINKING            :: ESC + "5m"
INVERSE             :: ESC + "7m"
HIDDEN              :: ESC + "8m"
STRIKETHROUGH       :: ESC + "9m"

// Style resets

BOLD_RESET          :: ESC + "22m"
DIM_RESET           :: ESC + "22m"
ITALIC_RESET        :: ESC + "23m"
UNDERLINE_RESET     :: ESC + "24m"
BLINKING_RESET      :: ESC + "25m"
INVERSE_RESET       :: ESC + "27m"
HIDDEN_RESET        :: ESC + "28m"
STRIKETHROUGH_RESET :: ESC + "29m"


@(private="package")
color :: proc(color, input: string) -> string {
    return fmt.aprintf("%s%s%s", color, input, RESET)
}

black :: proc(input: string) -> string {
    return color(BLACK, input)
}

red :: proc(input: string) -> string {
    return color(RED, input)
}

green :: proc(input: string) -> string {
    return color(GREEN, input)
}

yellow :: proc(input: string) -> string {
    return color(YELLOW, input)
}

blue :: proc(input: string) -> string {
    return color(BLUE, input)
}

magenta :: proc(input: string) -> string {
    return color(MAGENTA, input)
}

cyan :: proc(input: string) -> string {
    return color(CYAN, input)
}

white :: proc(input: string) -> string {
    return color(WHITE, input)
}

on_white :: proc(input: string) -> string {
    return color(ON_WHITE, input)
}

on_black :: proc(input: string) -> string {
    return color(ON_BLACK, input)
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
