require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.9.0-macosx.tgz"
  sha256 "d60d6e596775895da53f35ee93470b553c28c7c4dada615d6eff8c772169ebd5"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.9.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
