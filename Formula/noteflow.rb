class Noteflow < Formula
  desc "Fast, lightweight, cross-platform note-taking application with markdown support"
  homepage "https://github.com/Xafloc/NoteFlow-Go"
  url "https://github.com/Xafloc/NoteFlow-Go/archive/main.tar.gz"
  sha256 "b8cc0c127ab8fefe893e88f86ea1a6c0a7933fb466514177ba653b6e71c6f924"
  license "MIT"
  version "1.0.0"

  depends_on "go" => :build

  def install
    # Build the application
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", "noteflow", "."
    
    # Install the binary
    bin.install "noteflow"
  end

  test do
    # Test that the binary was installed and can show version/help
    system "#{bin}/noteflow", "--version"
  end

  def caveats
    <<~EOS
      NoteFlow has been installed!
      
      To start using NoteFlow:
      1. Navigate to any project directory
      2. Run: noteflow
      3. Open your browser to http://localhost:8000
      
      Features:
      • Markdown note-taking with MathJax support
      • Cross-folder task synchronization
      • Website archiving with +http prefix
      • Drag & drop file uploads
      • Multiple themes
      
      Visit /global-tasks to manage tasks across all your NoteFlow folders.
    EOS
  end
end