require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.6-macosx.tgz"
  sha256 "f135a39fa4be15b7ee0da3d16ce9f2fcd98473eb6fc3c6755c8e3b9f361177b9"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.6"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
