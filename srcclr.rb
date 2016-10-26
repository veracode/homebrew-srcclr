require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.6.2-macosx.tgz"
  sha256 "f13e29dd7260c6b258757858438fb7fc0fe09d03cf92817ff7cd77c088ef8dc3"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.6.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
