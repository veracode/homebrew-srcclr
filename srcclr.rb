require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.9.tgz"
  sha256 "36576ae772e7302fb71d5ff6f07432f1c13b0b1d2dd420cdf186e2072bf8e490"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.10+0d11c07d.30"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
