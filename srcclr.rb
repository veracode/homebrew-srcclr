require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.9-macosx.tgz"
  sha256 "abc39e5755c56080face2de17add495ef071f18f34a86610d0de14d2caa1da56"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.9"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
