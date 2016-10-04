require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.13-macosx.tgz"
  sha256 "e891bdd3f863a7a06cb5235e7366850a120aab8569d7e8c9c014a25ef3a04591"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.13"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
