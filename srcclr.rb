require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.7-macosx.tgz"
  sha256 "1e16b75b6ceb65311c6f0583dbed4b626e404a837ca46ebe372e597d62f18120"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.7"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
