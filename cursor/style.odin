package cursor 

CursorStyle :: enum {
    CURSOR_BLOCK = 0,
    CURSOR_UNDERLINE = 1,
    CURSOR_VERTICAL = 2,
}

set_style :: proc(style: CursorStyle) {}

enable_cursor_blinking :: proc() {}

disable_cursor_blinking :: proc() {}