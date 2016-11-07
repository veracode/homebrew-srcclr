require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.7.0-macosx.tgz"
  sha256 "ad3bb97646d13fcb1e5559457875d7bb077d67601fca4339522fc68f82694cbd"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.7.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
