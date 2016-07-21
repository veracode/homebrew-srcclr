require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.4.2-macosx.tgz"
  sha256 "a99450cc845ae2813bec0a9d97b25b283ecefa5e1c9a3d04a0e164f03e33172c"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.4.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
