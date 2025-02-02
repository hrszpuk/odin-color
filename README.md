# Odin Terminal
A powerful and versatile terminal manipulation package for Odin, designed to work seamlessly across multiple platforms.

[![GitHub release](https://img.shields.io/github/release/hrszpuk/odin-terminal?include_prereleases=&sort=semver&color=blue)](https://github.com/hrszpuk/odin-terminal/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)
[![issues - odin-terminal](https://img.shields.io/github/issues/hrszpuk/odin-terminal)](https://github.com/hrszpuk/odin-terminal/issues)

![image](https://github.com/hrszpuk/odin-terminal/assets/107559570/3946ebe3-470c-4913-bc3d-ce262e16989b)

[Read more in our documentation](odin-terminal.hrszpuk.com)
or [check out some examples](odin-terminal.hrszpuk.com/examples)

## Features
- **Vibrant Coloring**: Supports ANSI, Extended ANSI, and Truecolor (RGB)
- **Cursor & Screen Control**: Full control over cursor movements and screen manipulation.
- **Text Graphics**: Text Styles and Coloring
- **Event Handling**: Capture and respond to keyboard and mouse events.
- **Utility Functions**: Detect terminal capabilities, manage text padding and wrapping.

## Installation

### Submodule
Create an external folder in your project's root directory.
Add the project as a submodule like in the example below:
```
git submodule add https://github.com/hrszpuk/odin-terminal.git external/odin-terminal
```
Import the package using a relative path: `import "./external/odin-terminal"`.

### Shared collection
Clone the repository code using git and place the folder in your shared/external collection directory.
Import the package using `import color "collection-name:odin-terminal/color"` and build/run with the flag `--collection:collection-name=/path/to/collection`.
