require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.5-macosx.tgz"
  sha256 "a2de01bcfe71e54b0ce22279c5603e35f90d3c40be44870a57b7901000ebe805"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.1.5"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
