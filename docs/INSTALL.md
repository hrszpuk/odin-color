# Installation guide
This guide will help you to install the library in your project.
There are two ways to do it: as a submodule or as a shared collection.

## Submodule
This will be the best option if you want to keep the library up to date with the latest changes.

1. Create an external folder in your project's root directory.
2. Add the project as a submodule like in the example below:
```bash
git submodule add https://github.com/hrszpuk/odin-terminal.git external/odin-terminal
```
3. Import the package using a relative path: `import terminal "./external/odin-terminal"`.
4. Done!

## Shared collection
A shared collection is a good option if you want to use the library in multiple projects.

1. Clone the repository into your shared/external collection directory (or create a submodule in your shared collection).
2. Import the package using `import terminal "collection-name:odin-terminal"` 
3. Build/run with the flag `--collection:collection-name=/path/to/collection`.
4. Done!