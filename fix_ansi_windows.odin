package terminal 

import "core:fmt"
import "core:sys/windows"

@private
ENABLE_VIRTUAL_TERMINAL_PROCESSING :: 0x0004;

/* This procedure enables support for ANSI escape codes which are required for most methods in the library.
   It is automatically called at the beginning of the program (before main) and is only avaiable on Windows.

   If any errors occur during the execution of this procedure a message will be displayed in stdout and the procedure will return false.
 */
@init
__fix_windows_ansi__ :: proc() -> (ok := true) #optional_ok {
    stdout_handle := windows.GetStdHandle(windows.STD_OUTPUT_HANDLE);
    if stdout_handle == windows.INVALID_HANDLE_VALUE {
        fmt.println("__fix_windows_ansi__: Failed to get standard output handle");
        return false;
    }

    mode: u32;
    if !windows.GetConsoleMode(stdout_handle, &mode) {
        fmt.println("__fix_windows_ansi__: Failed to get console mode");
        return false;
    }

    mode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
    if !windows.SetConsoleMode(stdout_handle, mode) {
        fmt.println("__fix_windows_ansi__: Failed to set console mode (ENABLE_VIRTUAL_TERMINAL_PROCESSING)");
        return false;
    }
}