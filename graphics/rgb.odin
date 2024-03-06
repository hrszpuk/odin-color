package graphics 

import "core:fmt"

RGBColor :: struct {
    r: int,
    g: int,
    b: int,
}

RGBColour :: RGBColor

rgb :: proc{ rgb_string_from_struct, rgb_string_from_literals }

rgb_string_from_struct :: proc(input: string, rgb: RGBColor) -> string {
    return fmt.aprintf("%s%s%s", __format_rgb_ecode__(rgb.r, rgb.g, rgb.b), input, RESET)
}

rgb_string_from_literals :: proc(input: string, r: int, g: int, b: int) -> string {
    return fmt.aprintf("%s%s%s", __format_rgb_ecode__(r, g, b), input, RESET)
}

on_rgb :: proc{ on_rgb_string_from_struct, on_rgb_string_from_literals }

on_rgb_string_from_struct :: proc(input: string, rgb: RGBColor) -> string {
    return fmt.aprintf("%s%s%s", __format_rgb_ecode__(rgb.r, rgb.g, rgb.b, true), input, RESET)
}

on_rgb_string_from_literals :: proc(input: string, r: int, g: int, b: int) -> string {
    return fmt.aprintf("%s%s%s", __format_rgb_ecode__(r, g, b, false), input, RESET)
}

new_rgb :: proc{ new_rgb_val, new_rgb_arr }

new_rgb_val :: proc(r: int, g: int, b: int) -> RGBColor {
    return RGBColor{r, g, b};
}

new_rgb_arr :: proc(rgb: [3]int) -> RGBColor {
    return RGBColor{rgb[0], rgb[1], rgb[2]}
}

__format_rgb_ecode__ :: proc(r: int, g: int, b: int, foreground := true) -> string {
    return fmt.aprintf("%s%s;2;%d;%d;%dm", ESC, "38" if foreground else "48", r % 255, g % 255, b % 255)
}
