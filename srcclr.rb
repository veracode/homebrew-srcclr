require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.8.1-macosx.tgz"
  sha256 "c0394c062625afa87d9b6f6d8ad11f8e52a6f40d974ef8c276ef7297c861f064"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.8.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
