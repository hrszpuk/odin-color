package utilities 

// Utilities for terminal detection & capabilities
// Platform Compatibility handling
// and other terminal related utilities

is_terminal :: proc() -> bool {}

get_terminal_name :: proc() -> string {}

get_terminal_size :: proc() -> (int, int) {}

supports_ansi :: proc() -> bool {}

supports_truecolor :: proc() -> bool {}

supports_256_color :: proc() -> bool {}

supports_16_color :: proc() -> bool {}

has_mouse_support :: proc() -> bool {}

has_unicode_support :: proc() -> bool {}

is_in_multiplexer :: proc() -> bool {}
