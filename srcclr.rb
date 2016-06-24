require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.2.0-macosx.tgz"
  sha256 "5c448849e750ef776575f341103f3a29bb80b194f3a51f64e63e948e49bd865d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.2.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
