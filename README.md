# LiveCode Script for Visual Studio Code

Syntax highlighting, snippets, and language support for [LiveCode Script](https://livecode.org) and [LiveCode Builder](https://github.com/OpenXTalk-org/OpenXTalk-Community-DPE) (LCB).

Compatible with LiveCode Community Edition 9.6.3 and [OpenXTalk](https://openxtalk.org).

## Features

- **Syntax highlighting** for LiveCode Script (`.livecodescript`, `.livecode`, `.rev`, `.irev`) and LiveCode Builder (`.lcb`)
- **Snippets** for all common handler patterns, control flow, and idioms
- **Code folding** at handler boundaries
- **Auto-indentation** inside handlers, if/then/else, repeat loops, try/catch, switch
- **Bracket matching** and auto-close for `()`, `[]`, `""`
- **Comment toggling** with `--` (line) and `/* */` (block)

## Snippets

| Prefix                | Description                  |
| --------------------- | ---------------------------- |
| `on` / `handler`      | Message handler skeleton     |
| `function` / `fn`     | Function handler skeleton    |
| `mouseUp`             | on mouseUp handler           |
| `openCard`            | on openCard handler          |
| `openStack`           | on openStack handler         |
| `getprop` / `setprop` | Custom property handler pair |
| `if`                  | if/then/else block           |
| `ifs`                 | Single-line if/then          |
| `repfor`              | Repeat N times               |
| `repwith`             | Repeat with counter          |
| `repwhile`            | Repeat while                 |
| `repuntil`            | Repeat until                 |
| `replines`            | Repeat for each line         |
| `repwords`            | Repeat for each word         |
| `repitems`            | Repeat for each item         |
| `repkeys`             | Repeat for each key (array)  |
| `switch`              | Switch/case block            |
| `try`                 | Try/catch block              |
| `local` / `global`    | Variable declarations        |
| `geturl`              | Fetch a URL                  |
| `readfile`            | Read file into variable      |
| `writefile`           | Write variable to file       |
| `answer`              | Answer dialog                |
| `answerbuttons`       | Answer dialog with choices   |
| `ask`                 | Ask dialog for input         |
| `set`                 | Set object property          |
| `custprop`            | Custom property get/set pair |

### LiveCode Builder (LCB)

| Prefix    | Description        |
| --------- | ------------------ |
| `module`  | Module skeleton    |
| `widget`  | Widget skeleton    |
| `handler` | Handler definition |

## File Associations

The extension registers these file extensions automatically:

| Extension         | Language         |
| ----------------- | ---------------- |
| `.livecodescript` | LiveCode Script  |
| `.livecode`       | LiveCode Script  |
| `.rev`            | LiveCode Script  |
| `.irev`           | LiveCode Script  |
| `.lcb`            | LiveCode Builder |

## Settings

| Setting                         | Default           | Description                                             |
| ------------------------------- | ----------------- | ------------------------------------------------------- |
| `livecode.serverPath`           | `""`              | Path to `livecode-server` binary for headless execution |
| `livecode.defaultFileExtension` | `.livecodescript` | Default extension for new files                         |

## Variable Naming Convention Highlighting

The extension gives special treatment to the common LiveCode naming convention:

- `tVariable` — local (temp) variables
- `sVariable` — script-local variables
- `gVariable` — global variables
- `pParam` — parameters

Variables following this convention get highlighted as `variable.other` scope tokens.

## Acknowledgements

Built for the [OpenXTalk](https://openxtalk.org) community and LiveCode Kickstarter backers who helped open-source the platform in 2013.

LiveCode is © LiveCode Ltd. OpenXTalk Community Don't Panic Edition is GPL3.

## License

MIT
