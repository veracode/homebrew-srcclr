require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.7.1-macosx.tgz"
  sha256 "100320a4cbed4982d63ea7a205a8b98f6d7f2ae1be16128e711d12b1954b15d0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.7.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
