require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.5-macosx.tgz"
  sha256 "65caa7cf7a2b402e358319e2048eb62dfe9df9afa0b88029c6e4b5d5db0c8778"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.5"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
