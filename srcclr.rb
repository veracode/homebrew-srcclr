require "formula"

class Srcclr < Formula
  VERSION = "2.10.28"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "34e30a4aeec6e4dc26a2b29c76537c7736f7b06e8739eeb6ca6df3be178c4f8f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    assert_equal "Version: #{VERSION}", `srcclr --version`.strip
  end
end
