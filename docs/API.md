# Odin terminal api

## Table of contents
- [Colors](#colors)
  - [Color diagnostics](#color-diagnostics)
  - [ANSI Colors](#ansi-colors)
  - [Extended ANSI Colors](#extended-ansi-colors)
  - [AIXTerm Bright Colors](#aixterm-bright-colors)
  - [Truecolor (rgb) Colors](#truecolor-rgb-colors)
  - [High-level color functions](#high-level-color-functions)
- [Cursor controls](#cursor-controls)
- [Erasing functions](#erasing-functions)
- [Text graphics](#text-graphics)
- [Screen modes](#screen-modes)
- [Common private modes](#common-private-modes)
- [Keyboard events](#keyboard-events)
- [Mouse events](#mouse-events)
- [Termios bindings](#termios-bindings)
- 

## Colors 

### Color diagnostics
The color diagnostics are automatically ran and will check what colors are supported by the terminal.
The diagnostics are utilised by the high-level color functions to determine what color mode to use.
The terminal information is also stored in the `__terminal_info__` struct for manual use.
To avoid issues, it is recommended you use the h[igh-level color functions](#high-level-color-functions) which will automatically adjust to the terminal's capabilities.

If you want to use the exact color codes, they are available in the format `[color]_ansi`, `[color]_extended`, or `[color]_truecolor`.
More information about both types of functions are available below.

If you wish to disable to color diagnostics, you can do so by using `-define:ODIN_TERMINAL_DISABLE_COLOR_DIAGNOSTICS` when building your project.

### Reset 
Reset is a special color that will reset the terminal's color to the default color.
This function is available in all color modes.

```odin
reset()
```

### ANSI Colors
There are 8 ANSI colors available for use.
These colors are the most common and are supported by almost all terminals.

```odin
red_ansi()
green_ansi()
blue_ansi()
yellow_ansi()
magenta_ansi()
cyan_ansi()
white_ansi()
black_ansi()
```
Format: `[color]_ansi`

### Extended ANSI Colors
There are 16 extended ANSI colors available for use.
These colors are supported by most terminals, but not all.

If the terminal does not support extended ANSI colors, the colors will be downgraded to the 8 ANSI colors.
Optionally, background colors can be downgraded to nothing if the terminal does not support them using `-define:ODIN_TERMINAL_DISABLE_EXTENDED_ANSI_BACKGROUND_COLORS`.

```odin
// Foreground colors
red_extended()
green_extended()
blue_extended()
yellow_extended()
magenta_extended()
cyan_extended()
white_extended()
black_extended()

// Background colors
on_red_extended()
on_green_extended()
on_blue_extended()
on_yellow_extended()
on_magenta_extended()
on_cyan_extended()
on_white_extended()
on_black_extended()
```
Format: `[color]_extended` (foreground) or `on_[color]_extended` (background)

### AIXTerm Bright Colors
In order to make colors brighter, ANSI terminals use the bold text escape sequence. 
If the terminal supports the AIXTerm bright colors, bright colors can be used without making the text bold.

```odin
// Foreground colors
bright_red_aix()
bright_green_aix()
bright_blue_aix()
bright_yellow_aix()
bright_magenta_aix()
bright_cyan_aix()
bright_white_aix()
bright_black_aix()

// Background colors
on_bright_red_aix()
on_bright_green_aix()
on_bright_blue_aix()
on_bright_yellow_aix()
on_bright_magenta_aix()
on_bright_cyan_aix()
on_bright_white_aix()
on_bright_black_aix()
```
Format: `bright_[color]_aix` (foreground) or `on_bright_[color]_aix` (background)

If you wish to make colors brighter, but the terminal does not support the AIXTerm bright colors, you can use the bold text escape sequence.


### 256-bit Colors
256-bit colors use a 6x6x6 color cube to generate 256 colors.
These colors are supported by most modern terminals, but not all.

```odin
color_256(color: u8)
on_color_256(color: u8)
```

Format: `color_256(color)` (foreground) or `on_color_256(color)` (background)


### Truecolor (rgb) Colors
Truecolor (rgb) colors are the most advanced color mode available.
Truecolor colors are supported by most modern terminals, but not all.

```odin
truecolor_rgb(r: u8, g: u8, b: u8)
on_truecolor_rgb(r: u8, g: u8, b: u8)
```
Format: `truecolor_rgb(r, g, b)` (foreground) or `on_truecolor_rgb(r, g, b)` (background)


### High-level color functions
The high-level color functions will automatically adjust to the terminal's capabilities.
It will automatically use the best color mode available for the terminal.

The API resembles the truecolor functions, but also includes functions for the extended ANSI colors.
For most cases, you should use the high-level color functions.

```odin
// Extended ANSI colors


// Truecolor (rgb) colors


// Terminal information
```

## Cursor controls

## Erasing functions 

## Text graphics

## Screen modes

## Common private modes

## Keyboard events

## Mouse events

## Termios bindings