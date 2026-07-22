# GitHub Unified IDEA Theme

A blue-black UI theme for IntelliJ Platform IDEs. It combines a low-contrast,
GitHub-inspired interface palette with a modified Catppuccin Mocha editor color
scheme.

> This is an independent community theme and is not affiliated with or endorsed
> by GitHub or Catppuccin.

## Compatibility

- IntelliJ Platform build `262.*` (2026.2)
- Islands/New UI

## Installation

1. Download `github-unified-idea-theme-v1.0.4.zip` from the latest Release.
2. Open **Settings → Plugins**.
3. Click the gear icon and choose **Install Plugin from Disk…**.
4. Select the downloaded ZIP and restart the IDE.
5. Open **Settings → Appearance & Behavior → Appearance** and select
   **GitHub Unified Dark**.

## Palette

| Surface | Color |
| --- | --- |
| Editor | `#0D1117` |
| Tool windows | `#111820` |
| Main toolbar | `#151D27` |
| Raised surfaces | `#18212C` |
| Selection | `#1B2633` |
| Subtle borders | `#1A222C` |

The editor syntax colors remain based on Catppuccin Mocha. Only background,
selection, current-line, separator, margin, and indent-guide colors are adjusted
to match the blue-black interface.

## Build

Requirements: a JDK with the `jar` tool and the `zip` command.

```bash
./build.sh
```

The installable archive is written to `build/`.

## License

The repository is released under the MIT License. The bundled editor color
scheme is derived from [Catppuccin for JetBrains](https://github.com/catppuccin/jetbrains),
also licensed under MIT. See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

