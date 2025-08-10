# Homebrew Tap for NoteFlow-Go

Official Homebrew tap for [NoteFlow-Go](https://github.com/Xafloc/NoteFlow-Go) - a fast, lightweight, cross-platform note-taking application.

## Installation

```bash
brew install xafloc/noteflow-go/noteflow
```

This installs the binary as `noteflow-go` to avoid conflicts with the Python version of NoteFlow.

## Usage

After installation, you can start NoteFlow-Go from any directory:

```bash
noteflow-go
```

Then open your browser to http://localhost:8000

## Features

- **Markdown Note-Taking**: Live preview with MathJax support
- **Cross-Folder Task Sync**: SQLite-based task synchronization across projects  
- **Website Archiving**: Full resource inlining with `+http` prefix
- **Drag & Drop**: File and image uploads
- **Multiple Themes**: Beautiful color schemes with persistence
- **10x Faster**: Go binary vs Python interpreter startup

## Binary Name

This tap installs the binary as `noteflow-go` instead of `noteflow` to allow users to have both the Python version (`noteflow`) and Go version (`noteflow-go`) installed simultaneously without conflicts.

## Links

- **Main Repository**: https://github.com/Xafloc/NoteFlow-Go
- **Python Version**: https://github.com/Xafloc/NoteFlow
- **Issues**: https://github.com/Xafloc/NoteFlow-Go/issues

## License

MIT License - see the main repository for details.