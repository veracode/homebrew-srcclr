require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.10.tgz"
  sha256 "73515bfa9bb8a51c3ca44c73e9de0b186809472a15f433b1a05577a0307a2227"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.10+8e41e772.39"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
