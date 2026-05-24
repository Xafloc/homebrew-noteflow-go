class Noteflow < Formula
  desc "Fast, lightweight, cross-platform note-taking application with markdown support"
  homepage "https://github.com/Xafloc/NoteFlow-Go"
  url "https://github.com/Xafloc/NoteFlow-Go/archive/v1.7.4.tar.gz"
  sha256 "291bb8730019a896a9866fa5eef5313b65fb2ace680b589c8c58d81be6c0913d"
  license "MIT"
  version "1.7.4"

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
      
      Visit /global-tasks to manage tasks across all your NoteFlow-Go folders.
      
      Note: This installs as 'noteflow-go' to avoid conflicts with the Python version.
    EOS
  end
end