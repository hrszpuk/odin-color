package color

import "core:fmt"
import "core:strings"
import "core:text/regex"
import "core:strconv"

// HexColor represents a color in hexadecimal format
HexColor :: struct {
    value: string
}

HexColour :: HexColor

new_hex :: proc(value: string) -> (HexColor, bool) {
    hex := HexColor{value}
    return hex, is_valid_hex(hex)
}

hex_from_rgb :: proc{ hex_from_rgb_literal, hex_from_rgb_struct }

hex_from_rgb_literal :: proc(r: u8, g: u8, b: u8) -> (HexColor, bool) {
    return new_hex(fmt.aprintf("#%02X%02X%02X", r, g, b))
}

hex_from_rgb_struct :: proc(rgb: RGBColor) -> (HexColor, bool) {
    return new_hex(fmt.aprintf("#%02X%02X%02X", rgb.r, rgb.g, rgb.b))
}

apply_hex :: proc(input: string, hex_: HexColor) -> string {
    return fmt.aprintf("%s%s%s", hex_to_escape_code(hex_), input, RESET)
}

// Converts a HexColor to an ANSI escape code using regex
hex_to_escape_code :: proc(hex: HexColor) -> (string, bool) {
    rgb, success := hex_to_rgb(hex)

    return fmt.aprintf("\x1b[38;2;%d;%d;%dm", rgb.r, rgb.g, rgb.b), success
}

hex_to_rgb :: proc(hex: HexColor) -> (RGBColor, bool) {
    pattern, err := regex.create("#([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})")
    if err != nil {
        return RGBColor{}, false
    }

    capture := regex.Capture{}
    count, success := regex.match_with_preallocated_capture(pattern, hex.value, &capture)
    if !success || count != 4 {
        return RGBColor{}, false
    }

    r := strconv.atoi(capture.groups[1])
    g := strconv.atoi(capture.groups[2])
    b := strconv.atoi(capture.groups[3])

    return RGBColor{cast(u8)r,cast(u8)g,cast(u8)b}, true
}

// Returns true if HexColor is a valid hex color
is_valid_hex :: proc(hex: HexColor) -> bool {
    if len(hex.value) != 7 {
        return false
    }
    if hex.value[0] != '#' {
        return false
    }
    for i in 1..=7 {
        if !((hex.value[i] >= '0' && hex.value[i] <= '9') || (hex.value[i] >= 'A' && hex.value[i] <= 'F') || (hex.value[i] >= 'a' && hex.value[i] <= 'f')) {
            return false
        }
    }
    return true
}

