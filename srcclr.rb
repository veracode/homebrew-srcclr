require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.0-macosx.tgz"
  sha256 "d7b587bcdc79303631e763a2af90265485be0d911b5216dfededdf857f3c652f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.1.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
