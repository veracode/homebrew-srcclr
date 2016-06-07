require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.3-macosx.tgz"
  sha256 "e9d33b9f68b68c66d0628a095e30f8f9e536a35ddb9b05385e3f245ac7f43e84"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.1.3"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
