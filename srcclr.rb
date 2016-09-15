require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.9-macosx.tgz"
  sha256 "1d61fb357a989b3fb0333a4636047f2f712ea115f6f05aa6fe3402591f01ca5f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.9"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
