require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.0-macosx.tgz"
  sha256 "d7b587bcdc79303631e763a2af90265485be0d911b5216dfededdf857f3c652f"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.15"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
