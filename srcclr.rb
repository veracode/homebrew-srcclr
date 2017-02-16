require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.4-macosx.tgz"
  sha256 "ea144006cd3924894387045d66914dc9d16d2a5f08694979720656e913668e4d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.4"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
