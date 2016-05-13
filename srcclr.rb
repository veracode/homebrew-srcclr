require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.15.tgz"
  sha256 "7f92d0778d3eea16f66d2987973f11deb99b2599d7a5015b47af98a5bc7b0f3f"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.14"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
