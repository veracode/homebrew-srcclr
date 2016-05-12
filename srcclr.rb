require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.14.tgz"
  sha256 "057aa00b6801b6886423f483a383f5acd6f5008ca54cabf057607dd817114242"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.14"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
