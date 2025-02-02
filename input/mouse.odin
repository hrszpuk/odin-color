package input 

// Mouse support
MouseEvent :: struct {
    x: int,
    y: int,
    button: MouseButton,
    action: MouseAction,
}
read_mouse_event :: proc() -> MouseEvent {}

MouseButton :: enum {
    LEFT, RIGHT, MIDDLE, SCROLL_UP, SCROLL_DOWN
}

MouseAction :: enum {
    PRESS, RELEASE, DRAG
}
