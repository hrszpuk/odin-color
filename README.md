# Odin terminal
A simplistic, easy to use ANSI terminal library.

[![GitHub release](https://img.shields.io/github/release/hrszpuk/odin-terminal?include_prereleases=&sort=semver&color=blue)](https://github.com/hrszpuk/odin-terminal/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)
[![issues - odin-color](https://img.shields.io/github/issues/hrszpuk/odin-terminal)](https://github.com/hrszpuk/odin-terminal/issues)

![image](https://github.com/hrszpuk/odin-terminal/assets/107559570/3946ebe3-470c-4913-bc3d-ce262e16989b)

[Read more in our documentation](https://github.com/hrszpuk/odin-terminal/edit/main/DOCS.md)
or [check out some examples](https://github.com/hrszpuk/odin-terminal/edit/main/examples/README.md)

## Features (WIP)
- [ ] ANSI, Extended ANSI, and Truecolor (rgb) coloring
- [ ] Cursor controls
- [ ] Erasing functions
- [ ] Text graphics (italics, blinkings, etc)
- [ ] Screen modes
- [ ] Common private modes
- [ ] Keyboard events
- [ ] Mouse events
- [ ] Termios bindings
- [ ] Some kind of Windows terminal bindings (research needed)

## Installation

### Submodule
Create an external folder in your project's root directory.
Add the project as a submodule like in the example below:
```
git submodule add https://github.com/hrszpuk/odin-terminal.git external/odin-terminal
```
Import the package using a relative path: `import graphics "./external/odin-terminal/graphics"`.

### Shared collection
Download the repository code using git and place the folder in your shared/external collection directory.
Import the package using `import graphics "collection-name:odin-terminal/graphics"` and build/run with the flag `--collection:collection-name=/path/to/collection`.


