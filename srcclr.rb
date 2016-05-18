require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.1-macosx.tgz"
  sha256 "ac393b5b7bc685a44cc618df9ee9b151b34351526fa95971a5f3f733e7e7210f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.1.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
