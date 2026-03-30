# Repository Guidelines

## Project Structure & Module Organization
This repository is a multi-project legacy codebase (mainly C/C++ and ASM), not a single app. Key folders:

- `werkkzeug3_kkrieger/` - kkrieger branch (game/player/tools); active area for game/runtime fixes.
- `werkkzeug3/`, `altona_wz4/`, `altona2/`, `RG2/`, `v2/`, `genthree/`, `kkrunchy*/`, `ktg/`, `lekktor/` - historical tools and engines.
- `tools/windows/` - build helpers for modern Windows/VS setups.
- Root docs: `README.md`, `WINDOWS11_VS2026.md`, `WINDOWS11_VS2026_BUILD_REPORT.md`.

Prefer changing only one project subtree per PR.

## Build, Test, and Development Commands
Use WSL2 + Windows 11 + Visual Studio (Win32 target is recommended).

- Environment/build check:
  `powershell -ExecutionPolicy Bypass -File .\tools\windows\vs2026-check-and-build.ps1`
- Build modern solutions:
  `powershell -ExecutionPolicy Bypass -File .\tools\windows\vs2026-check-and-build.ps1 -Build -Configuration Release -Platform Win32`
- Build one target directly (example):
  `MSBuild.exe .\werkkzeug3_kkrieger\player_kkrieger\player_kkrieger.vcxproj /t:Build "/p:Configuration=Debug;Platform=Win32"`

## Coding Style & Naming Conventions
- Preserve legacy style per file; do not mass-reformat.
- C++: existing code commonly uses 2-space indentation and K&R-style braces.
- Keep original naming patterns (`sSystem`, `KKriegerGame`, `InitScreens`, etc.).
- Use ASCII unless file already requires extended characters.
- Minimize broad refactors; prefer small, isolated fixes.

## Testing Guidelines
There is no unified unit-test framework. Validate by:

1. Successful build of changed project(s).
2. Runtime smoke test for touched executable(s) (launch, basic flow, clean exit).
3. For renderer/UI changes, include before/after screenshots and reproduction steps.

Document exact build command and runtime scenario in PR notes.
