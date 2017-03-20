require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.8-macosx.tgz"
  sha256 "c7769ee7a8c1724b9ea88ad9114b77005c0841e0a147aa68607c9c8ad3ddca90"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.8"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
