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
The terminal information is also stored in the `terminal_info` struct for manual use.
To avoid issues, it is recommended you use the h[igh-level color functions](#high-level-color-functions) which will automatically adjust to the terminal's capabilities.

If you want to use the exact color codes, they are available in the format `[color]_ansi`, `[color]_extended`, or `[color]_truecolor`.
More information about both types of functions are available below.

If you wish to disable to color diagnostics, you can do so by using `-define:ODIN_TERMINAL_DISABLE_COLOR_DIAGNOSTICS` when building your project.

### ANSI Colors

### Extended ANSI Colors

### AIXTerm Bright Colors

### Truecolor (rgb) Colors

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