require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.8.3-macosx.tgz"
  sha256 "74dbdd8bcc5de9ae216423148c63f58b1fd93a4a1813ed07ba9a0b7c8b390b16"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.8.4"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
