require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.8-macosx.tgz"
  sha256 "46746bb8dd5930a76e09bbc5c18ac19ace56aeb8d61edecdc4ffbe17c5eeb587"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.8"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
