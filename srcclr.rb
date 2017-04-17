require "formula"

class Srcclr < Formula
  VERSION = "2.10.12"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "abfec7c0c81ea3014bc4a07247ca5494f29f8421de26c76f7bdf85410137d9fd"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    assert_equal "Version: #{VERSION}", `srcclr --version`.strip
  end
end
