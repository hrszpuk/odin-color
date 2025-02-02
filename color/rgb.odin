package color 

import "core:fmt"

RGBColor :: struct {
    r: u8,
    g: u8,
    b: u8,
}

RGBColour :: RGBColor

new_rgb :: proc(r: u8, g: u8, b: u8) -> RGBColor {
    return RGBColor{r, g, b};
}

// Returns a string with the input text and the RGB color applied
apply_rgb :: proc{ rgb_string_from_struct, rgb_string_from_literals }

rgb_string_from_struct :: proc(input: string, rgb: RGBColor, foreground := true) -> string {
    return fmt.aprintf("%s%s%s", rgb_to_escape_code(rgb.r, rgb.g, rgb.b, foreground), input, RESET)
}

rgb_string_from_literals :: proc(input: string, r: u8, g: u8, b: u8, foreground := true) -> string {
    return fmt.aprintf("%s%s%s", rgb_to_escape_code(r, g, b, foreground), input, RESET)
}

rgb_to_escape_code :: proc(r: u8, g: u8, b: u8, foreground := true) -> string {
    return fmt.aprintf("%s%s;2;%d;%d;%dm", ESC, "38" if foreground else "48", r % 255, g % 255, b % 255)
}

rgb_to_hex :: proc(rgb: RGBColor) -> string {
    return fmt.aprintf("#%02X%02X%02X", rgb.r, rgb.g, rgb.b)
}