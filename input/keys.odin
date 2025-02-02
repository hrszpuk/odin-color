package input 

Key :: enum {
    // Printable keys
    Space,          // ' '
    Exclamation,    // '!'
    DoubleQuote,    // '"'
    Hash,           // '#'
    Dollar,         // '$'
    Percent,        // '%'
    Ampersand,      // '&'
    SingleQuote,    // '''
    OpenParen,      // '('
    CloseParen,     // ')'
    Asterisk,       // '*'
    Plus,           // '+'
    Comma,          // ','
    Minus,          // '-'
    Period,         // '.'
    Slash,          // '/'
    Zero,           // '0'
    One,            // '1'
    Two,            // '2'
    Three,          // '3'
    Four,           // '4'
    Five,           // '5'
    Six,            // '6'
    Seven,          // '7'
    Eight,          // '8'
    Nine,           // '9'
    Colon,          // ':'
    Semicolon,      // ';'
    Less,           // '<'
    Equal,          // '='
    Greater,        // '>'
    Question,       // '?'
    At,             // '@'
    A,              // 'a' // letters are lowercase - match uppercase with shift in KeyEvent
    B,              // 'b'
    C,              // 'c'
    D,              // 'd'
    E,              // 'e'
    F,              // 'f'
    G,              // 'g'
    H,              // 'h'
    I,              // 'i'
    J,              // 'j'
    K,              // 'k'
    L,              // 'l'
    M,              // 'm'
    N,              // 'n'
    O,              // 'o'
    P,              // 'p'
    Q,              // 'q'
    R,              // 'r'
    S,              // 's'
    T,              // 't'
    U,              // 'u'
    V,              // 'v'
    W,              // 'w'
    X,              // 'x'
    Y,              // 'y'
    Z,              // 'z'
    OpenBracket,    // '['
    Backslash,      // '\'
    CloseBracket,   // ']'
    Caret,          // '^'
    Underscore,     // '_'
    Backtick,       // '`'
    
    // Non-printable keys
    Escape,
    Enter,
    Tab,
    Backspace,
    Insert,
    Delete,
    Right,
    Left,
    Down,
    Up,
    PageUp,
    PageDown,
    Home,
    End,
    CapsLock,
    ScrollLock,
    NumLock,
    PrintScreen,
    Pause,

    // Keypad keys
    NumPad0,
    NumPad1,
    NumPad2,
    NumPad3,
    NumPad4,
    NumPad5,
    NumPad6,
    NumPad7,
    NumPad8,
    NumPad9,
    NumPadDecimal,
    NumPadDivide,
    NumPadMultiply,
    NumPadSubtract,
    NumPadAdd,
    NumPadEnter,
    NumPadEqual,

    // Arrow keys
    LeftArrow,
    RightArrow,
    UpArrow,
    DownArrow,
}

KeyEvent :: struct {
    key: Key,         // The main key pressed
    ctrl: bool,       // Whether Ctrl was held
    shift: bool,      // Whether Shift was held
    alt: bool,        // Whether Alt was held
    meta: bool,       // (Optional) Meta key (Cmd key on macOS)
}

key_event :: proc() -> KeyEvent {}

// Key event helpers
is_printable :: proc(key: Key) -> bool {}
is_non_printable :: proc(key: Key) -> bool {}
is_keypad :: proc(key: Key) -> bool {}
is_letter :: proc(key: Key) -> bool {}
is_number :: proc(key: Key) -> bool {}
is_symbol :: proc(key: Key) -> bool {}
is_arrow :: proc(key: Key) -> bool {}

