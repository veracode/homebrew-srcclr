require "formula"

class Srcclr < Formula
  VERSION = "2.13.30"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "6c71224e28ff350dccf31adcc72037a8f7e8390d8e9b7e42779a83d29aeff5f1"

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
