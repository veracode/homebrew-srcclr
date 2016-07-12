require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.3.0-macosx.tgz"
  sha256 "2094e938dc8f59b4dfe84f4c1605497a81ed592366d3c2ed22a83c69f430c270"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.3.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
