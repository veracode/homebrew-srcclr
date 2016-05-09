require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.7.tgz"
  sha256 "312e2c2534d72ada8487c9c98592816cb6d9a062a4347f070171590b6b2d3ecc"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "2.0.2+alpha1.0d11c07d.30"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
