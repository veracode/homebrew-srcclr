require "formula"

class Srcclr < Formula
  VERSION = "3.3.9"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "f12fcd35733df6da2c4726c274a066df313f491939a86b9ea117eda92988f2ef"

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
