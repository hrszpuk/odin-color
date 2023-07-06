# Odin color
A simple, easy to use terminal colors package.

Installation: I recommend using a git submodule inside a directory called "external" and importing like below:

```odin
package main

import color "external/color"  // Path to package

main :: proc() {
    str := "Hello, World"

    // color(input=.., color=..., foreground=true | false, reset = true | false)
    colored := color.color(str, color.Color.red)

    /* Colors:
    reset,
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    bright_black,
    bright_red,
    bright_green,
    bright_yellow,
    bright_blue,
    bright_magenta,
    bright_cyan,
    bright_white,
    */
}

```