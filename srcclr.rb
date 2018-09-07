require "formula"

class Srcclr < Formula
  VERSION = "3.0.27"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "7c72fd523427d0a84fcf94544539cdf410f9167cc043dff82f777dd538b81ba1"

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
