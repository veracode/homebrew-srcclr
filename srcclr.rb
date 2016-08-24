require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.5.4-macosx.tgz"
  sha256 "484880849628e125a71369ad77534e9a247429fb3741e7990d98ebe6a18957f2"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.4"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
