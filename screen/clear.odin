package screen 

ClearMode :: enum {
    CLEAR_FROM_CURSOR_TO_END = 0,
    CLEAR_FROM_CURSOR_TO_BEGINNING = 1,
    CLEAR_ALL = 2,
    CLEAR_ALL_FROM_CURSOR = 3,
}

clear_screen :: proc(mode: ClearMode) -> (ok: bool) {}

clear_line :: proc(mode: ClearMode) -> (ok: bool) {}