class Noteflow < Formula
  desc "Fast, lightweight, cross-platform note-taking application with markdown support"
  homepage "https://github.com/Xafloc/NoteFlow-Go"
  url "https://github.com/Xafloc/NoteFlow-Go/archive/v1.8.5.tar.gz"
  sha256 "990be820d67027ac6c1c50c9c542010c397a38e986e4308b1d1ed33acdb9b9e4"
  license "MIT"
  version "1.8.5"

  depends_on "go" => :build

  def install
    # Build the application
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", "noteflow-go", "."
    
    # Install the binary
    bin.install "noteflow-go"
  end

  test do
    # Test that the binary was installed and can show version/help
    system "#{bin}/noteflow-go", "--version"
  end

  def caveats
    <<~EOS
      NoteFlow-Go has been installed as 'noteflow-go'!
      
      To start using NoteFlow-Go:
      1. Navigate to any project directory
      2. Run: noteflow-go
      3. Open your browser to http://localhost:8000
      
      Features:
      • Markdown note-taking with MathJax support
      • Note collapse/expand with hover controls
      • Cross-folder task synchronization
      • Website archiving with +http prefix
      • Drag & drop file uploads
      • Multiple themes
      • AI assist (v1.7): chat your notes via any OpenAI-compatible endpoint
      • Autosave (v1.8.1): background saves at configurable interval
      • Archive SSL-verify toggle (v1.8.3): opt out behind a TLS-inspecting proxy
      • v1.8.5: atomic saves, localhost bind, external reload, fast checkboxes,
        richer AI context, hardened uploads (Python 0.7.6 parity)
      
      Visit /global-tasks to manage tasks across all your NoteFlow-Go folders.
      
      Note: This installs as 'noteflow-go' to avoid conflicts with the Python version.
      Default bind is 127.0.0.1; use --host 0.0.0.0 for LAN (no auth).
    EOS
  end
end
