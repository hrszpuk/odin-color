package utilities 

import "core:log"
import "core:sys/windows"
    
ENABLE_VIRTUAL_TERMINAL_PROCESSING :: 0x0004

/* This procedure enables support for ANSI escape codes which are required for most methods in the library.
    It is automatically called at the beginning of the program (before main) and is only available on Windows.
    You can call this procedure manually if you want to enable ANSI escape codes at a different time.
    If any errors occur during the execution of this procedure a message will be logged using the given logger.
    The log level for messages will be set to `Error`.
 */
@init
enable_windows_ansi :: proc(logger: ^log.Logger = log.default_logger) -> bool {
    stdout_handle := windows.GetStdHandle(windows.STD_OUTPUT_HANDLE)
    if stdout_handle == windows.INVALID_HANDLE_VALUE {
        logger.error("[odin-terminal] Failed to get standard output handle while trying to enable ANSI escape codes for Windows. This will cause most library features to not work properly. Error code: %d.", windows.GetLastError());
        return false
    }

    mode: u32;
    if !windows.GetConsoleMode(stdout_handle, &mode) {
        logger.error("[odin-terminal] Failed to get console mode while trying to enable ANSI escape codes for Windows. This will cause most library features to not work properly. Error code: %d.", windows.GetLastError());
        return false
    }

    mode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
    if !windows.SetConsoleMode(stdout_handle, mode) {
        logger.error("[odin-terminal] Failed to set console mode while trying to enable ANSI escape codes for Windows. This will cause most library features to not work properly. Error code: %d.", windows.GetLastError());
        return false
    }

    return true
}
