require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.4-macosx.tgz"
  sha256 "3d20c6928db7ced49a21833ebf34f8550df0850af98f01b9e7d3954f1812ac89"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.1.4"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
