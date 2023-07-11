# Odin color
A simple ANSI color package similar to Rust's colored crate.

[![hrszpuk - odin-color](https://img.shields.io/static/v1?label=hrszpuk&message=odin-color&color=blue&logo=github)](https://github.com/hrszpuk/odin-color "Go to GitHub repo")
[![stars - odin-color](https://img.shields.io/github/stars/hrszpuk/odin-color?style=social)](https://github.com/hrszpuk/odin-color)
[![forks - odin-color](https://img.shields.io/github/forks/hrszpuk/odin-color?style=social)](https://github.com/hrszpuk/odin-color)
[![GitHub release](https://img.shields.io/github/release/hrszpuk/odin-color?include_prereleases=&sort=semver&color=blue)](https://github.com/hrszpuk/odin-color/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)
[![issues - odin-color](https://img.shields.io/github/issues/hrszpuk/odin-color)](https://github.com/hrszpuk/odin-color/issues)

[Read more in our documentation](https://github.com/hrszpuk/odin-color/edit/main/DOCS.md)
or [check out some examples](https://github.com/hrszpuk/odin-color/edit/main/examples/README.md)

## Installation

### Submodule
Create an external folder in your project's root directory.
Add the project as a submodule like in the example below:
```
git submodule add https://github.com/hrszpuk/odin-color.git external/odin-color
```
Import the package using a relative path: `import color "./external/odin-color`.

### Shared collection
Download the repository code using git and place the folder in your shared/external collection directory.
Import the package using `import color "collection-name:odin-color"` and build/run with the flag `--collection:collection-name=/path/to/collection`.


