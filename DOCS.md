# odin-color - Documentation

## Functions

```odin 
// Below are all the available color functions.
// Each wrap a string in ANSI color codes: COLOR + s + RESET
black(string) -> string
red(string) -> string
green(string) -> string
yellow(string) -> string
blue(string) -> string
magenta(string) -> string
cyan(string) -> string
```
For background color, simply add `on_` prefix to the start of each function (`on_red()` for example).
FOr bright colors add `bright_` prefix to the start of each function (`bright_red()`).
For bright background colors add `on_bright_` prefix to the start of each function (`on_bright_red()`).

## Constants
You can also use the color constants.

```odin
// Usage:
fmt.println(RED + "Hello, " + BRIGHT_BLUE + "World!" + RESET)

// Foreground colors + reset
RESET        
BLACK         
RED           
GREEN         
YELLOW        
BLUE          
MAGENTA       
CYAN          
WHITE         

// Background colors     
ON_BLACK         
ON_RED           
ON_GREEN         
ON_YELLOW        
ON_BLUE          
ON_MAGENTA       
ON_CYAN          
ON_WHITE         

// Foreground, bright colors
BRIGHT_BLACK  
BRIGHT_RED    
BRIGHT_GREEN  
BRIGHT_YELLOW 
BRIGHT_BLUE   
BRIGHT_MAGENTA
BRIGHT_CYAN   
BRIGHT_WHITE  

// Background, bright colors
ON_BRIGHT_BLACK   
ON_BRIGHT_RED     
ON_BRIGHT_GREEN   
ON_BRIGHT_YELLOW  
ON_BRIGHT_BLUE    
ON_BRIGHT_MAGENTA 
ON_BRIGHT_CYAN    
ON_BRIGHT_WHITE   
```
