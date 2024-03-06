//+private
package terminal 

// Windows terminal does not support ANSI escape codes by default. 
// We detect if the platform is Windows and enable support automatically.

import "core:fmt"
import "core:sys/windows"

ENABLE_VIRTUAL_TERMINAL_PROCESSING :: 0x0004;

@init
__fix_windows_ansi__ :: proc() {
    stdout_handle := windows.GetStdHandle(windows.STD_OUTPUT_HANDLE);
    if stdout_handle == windows.INVALID_HANDLE_VALUE {
        fmt.println("__fix_windows_ansi__: Failed to get standard output handle");
        return;
    }

    mode: u32;
    if !windows.GetConsoleMode(stdout_handle, &mode) {
        fmt.println("__fix_windows_ansi__: Failed to get console mode");
        return;
    }

    mode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
    if !windows.SetConsoleMode(stdout_handle, mode) {
        fmt.println("__fix_windows_ansi__: Failed to set console mode (ENABLE_VIRTUAL_TERMINAL_PROCESSING)");
        return;
    }
}