require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.2.1-macosx.tgz"
  sha256 "c3cacdb0986168a460109dc6622a657768d781dd389d671fb442e20b468768ea"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.2.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
