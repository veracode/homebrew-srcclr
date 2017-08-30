require "formula"

class Srcclr < Formula
  VERSION = "2.10.29"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "5c0d9e3633c0f8ff6319b8b4d8ede63f49c63a77839f907353d9f9948e55a1a7"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    assert_equal "Version: #{VERSION}", `srcclr --version`.strip
  end
end
