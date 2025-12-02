package color

import "core:fmt"

@(private = "package")
ESC :: "\033["

RESET :: ESC + "0m"
BLACK :: ESC + "30m"
RED :: ESC + "31m"
GREEN :: ESC + "32m"
YELLOW :: ESC + "33m"
BLUE :: ESC + "34m"
MAGENTA :: ESC + "35m"
CYAN :: ESC + "36m"
WHITE :: ESC + "37m"

ON_BLACK :: ESC + "40m"
ON_RED :: ESC + "41m"
ON_GREEN :: ESC + "42m"
ON_YELLOW :: ESC + "43m"
ON_BLUE :: ESC + "44m"
ON_MAGENTA :: ESC + "45m"
ON_CYAN :: ESC + "46m"
ON_WHITE :: ESC + "47m"

BRIGHT_BLACK :: ESC + "90m"
BRIGHT_RED :: ESC + "91m"
BRIGHT_GREEN :: ESC + "92m"
BRIGHT_YELLOW :: ESC + "93m"
BRIGHT_BLUE :: ESC + "94m"
BRIGHT_MAGENTA :: ESC + "95m"
BRIGHT_CYAN :: ESC + "96m"
BRIGHT_WHITE :: ESC + "97m"

ON_BRIGHT_BLACK :: ESC + "100m"
ON_BRIGHT_RED :: ESC + "101m"
ON_BRIGHT_GREEN :: ESC + "102m"
ON_BRIGHT_YELLOW :: ESC + "103m"
ON_BRIGHT_BLUE :: ESC + "104m"
ON_BRIGHT_MAGENTA :: ESC + "105m"
ON_BRIGHT_CYAN :: ESC + "106m"
ON_BRIGHT_WHITE :: ESC + "107m"

// taken from hrszpuk/odin-color:dev:
// Styles

BOLD :: ESC + "1m"
DIM :: ESC + "2m"
ITALIC :: ESC + "3m"
UNDERLINE :: ESC + "4m"
BLINKING :: ESC + "5m"
INVERSE :: ESC + "7m"
HIDDEN :: ESC + "8m"
STRIKETHROUGH :: ESC + "9m"

// Style resets

BOLD_RESET :: ESC + "22m"
DIM_RESET :: ESC + "22m"
ITALIC_RESET :: ESC + "23m"
UNDERLINE_RESET :: ESC + "24m"
BLINKING_RESET :: ESC + "25m"
INVERSE_RESET :: ESC + "27m"
HIDDEN_RESET :: ESC + "28m"
STRIKETHROUGH_RESET :: ESC + "29m"


@(private = "package")
color :: proc(color, input: string, allocator := context.allocator) -> string {
	return fmt.aprintf("%s%s%s", color, input, RESET, allocator = allocator)
}

black :: proc(input: string, allocator := context.allocator) -> string {
	return color(BLACK, input, allocator = allocator)
}

red :: proc(input: string, allocator := context.allocator) -> string {
	return color(RED, input, allocator = allocator)
}

green :: proc(input: string, allocator := context.allocator) -> string {
	return color(GREEN, input, allocator = allocator)
}

yellow :: proc(input: string, allocator := context.allocator) -> string {
	return color(YELLOW, input, allocator = allocator)
}

blue :: proc(input: string, allocator := context.allocator) -> string {
	return color(BLUE, input, allocator = allocator)
}

magenta :: proc(input: string, allocator := context.allocator) -> string {
	return color(MAGENTA, input, allocator = allocator)
}

cyan :: proc(input: string, allocator := context.allocator) -> string {
	return color(CYAN, input, allocator = allocator)
}

white :: proc(input: string, allocator := context.allocator) -> string {
	return color(WHITE, input, allocator = allocator)
}

on_white :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_WHITE, input, allocator = allocator)
}

on_black :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BLACK, input, allocator = allocator)
}

on_red :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_RED, input, allocator = allocator)
}

on_green :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_GREEN, input, allocator = allocator)
}

on_yellow :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_YELLOW, input, allocator = allocator)
}

on_blue :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BLUE, input, allocator = allocator)
}

on_magenta :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_MAGENTA, input, allocator = allocator)
}

on_cyan :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_CYAN, input, allocator = allocator)
}

bright_white :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_WHITE, input, allocator = allocator)
}

bright_black :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_BLACK, input, allocator = allocator)
}

bright_red :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_RED, input, allocator = allocator)
}

bright_green :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_GREEN, input, allocator = allocator)
}

bright_yellow :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_YELLOW, input, allocator = allocator)
}

bright_blue :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_BLUE, input, allocator = allocator)
}

bright_magenta :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_MAGENTA, input, allocator = allocator)
}

bright_cyan :: proc(input: string, allocator := context.allocator) -> string {
	return color(BRIGHT_CYAN, input, allocator = allocator)
}

on_bright_black :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_BLACK, input, allocator = allocator)
}

on_bright_red :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_RED, input, allocator = allocator)
}

on_bright_green :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_GREEN, input, allocator = allocator)
}

on_bright_yellow :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_YELLOW, input, allocator = allocator)
}

on_bright_blue :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_BLUE, input, allocator = allocator)
}

on_bright_magenta :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_MAGENTA, input, allocator = allocator)
}

on_bright_cyan :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_CYAN, input, allocator = allocator)
}

on_bright_white :: proc(input: string, allocator := context.allocator) -> string {
	return color(ON_BRIGHT_WHITE, input, allocator = allocator)
}
