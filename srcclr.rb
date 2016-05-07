require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-1.9.15.tgz"
  sha256 "b3f4d47eb4e61aa7dfc9c480bbdbcf188c8523df7d942e1c6a52f37a5a19ecba"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "1.9.15+d43567aa.23"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
