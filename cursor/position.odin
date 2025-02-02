package cursor 

save_position :: proc() -> (ok: bool) {}

restore_position :: proc() -> (ok: bool) {}

get_position :: proc() -> (row: int, col: int) {}