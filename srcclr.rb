require "formula"

class Srcclr < Formula
  VERSION = "3.6.22"

  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-#{VERSION}-macosx.tgz"
  sha256 "ddba09c5dd588ded19c7713ff65f8722c7bc2922305180ed8edbf85d12735df6"

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
