class Noteflow < Formula
  desc "Fast, lightweight, cross-platform note-taking application with markdown support"
  homepage "https://github.com/Xafloc/NoteFlow-Go"
  url "https://github.com/Xafloc/NoteFlow-Go/archive/v1.1.0.tar.gz"
  sha256 "e6d0c923bd52b9f37f156c7b62c17b171eb66ad1c3e504d6b1f11586a55fbfb6"
  license "MIT"
  version "1.1.0"

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
      
      Visit /global-tasks to manage tasks across all your NoteFlow-Go folders.
      
      Note: This installs as 'noteflow-go' to avoid conflicts with the Python version.
    EOS
  end
end