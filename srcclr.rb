require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.5.0-macosx.tgz"
  sha256 "d35745e92370127fa2d752e51ac79dc666441f82739cd4d4f57430edd575e50e"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
