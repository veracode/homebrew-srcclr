require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.8.5-macosx.tgz"
  sha256 "877ac6f0ece49d8b16b8aba395465ca4b05086e7ebeada597a297e2c55217fc5"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.8.5"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
