class Ahola < Formula
  desc "The ultra-fast, dual-dialect systems programming language engine"
  homepage "https://github.com/yourusername/ahola"
  url "https://github.com/yourusername/ahola/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e7f135b129b16217ea72b01f779baf9a004f78b17449cd44c88243fc63be210e"
  license "GNU v3.0"

  depends_on "rust" => :build

  def install
   system "rustc", "main.rs", "-o", "engine"
    
    bin.install "engine" => "ahola"
  end

  test do
    system "#{bin}/ahola", "yeah", "run"
  end
end
