class Ahola < Formula
  desc "Ahola programming language"
  homepage "https://github.com/secondcoolestguy/ahola"
  url "https://github.com/secondcoolestguy/ahola/archive/refs/tags/v0.0.1-pre.tar.gz"
  sha256 "e7f135b129b16217ea72b01f779baf9a004f78b17449cd44c88243fc63be210e"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "rustc", "main.rs", "-o", "engine"
    bin.install "engine" => "ahola"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ahola yeah run 2>&1", 0)
  end
end
