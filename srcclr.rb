require "formula"

class Srcclr < Formula
  VERSION = "3.6.9"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "6fe5656e8b8ca0a4b86f7f000d0e6d0049e1ecfd16e7a18b02182cff13bb417c"

  def install
    prefix.install 'THIRD-PARTY.txt'
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    assert_equal "Version: #{VERSION}", `srcclr --version`.strip
  end
end
