require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.1.2-macosx.tgz"
  sha256 "26910fe6bce8a6091656d0e75d8f7a83fd1c52e3a5e32cb79d31ce0c609c33fa"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.1.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
