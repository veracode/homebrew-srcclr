require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.11.tgz"
  sha256 "f488c8f0a3cf7b02465fcf4d0defa8b837d822e44bf524af2547e9e63a3a770d"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.11+99232eba.40"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
