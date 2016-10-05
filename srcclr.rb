require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.14-macosx.tgz"
  sha256 "e53bb4adc3f73def4396b33fe3b8a327abf8be03acf534583faaaaa5e2f61f7a"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.14"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
