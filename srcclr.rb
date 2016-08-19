require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.5.2-macosx.tgz"
  sha256 "f741c748ad9f35b01c1b1ea2b5519c1d0c57f8fa93d3bec98d41f38cd990da36"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
