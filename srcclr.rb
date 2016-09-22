require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.12-macosx.tgz"
  sha256 "953b3101c1563c4b2da6720c259fcca33a2817282ce890d02177290a453d5dcd"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.12"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
