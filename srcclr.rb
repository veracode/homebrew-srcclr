require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.1+alpha1.tgz"
  sha256  "26a82853d6bb4e9332a4da4c436edba2b5b3f023b3db477d5d1dafda1699f192"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "1.9.17+ef849d30.25"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
