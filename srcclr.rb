require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.4.1-macosx.tgz"
  sha256 "1458dbc940ab24f05000aff372bde6bb945504bf2564fe58afcf28056944f8ed"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.4.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
