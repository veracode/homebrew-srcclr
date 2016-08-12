require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.5.1-macosx.tgz"
  sha256 "33fa923f15ead01c629af6b188f7f0bb3c8959c561383a86a2210c43c80fef12"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
