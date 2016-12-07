require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.8.0-macosx.tgz"
  sha256 "0ba2e896df6dcab4097ce65e67e883d535892ff9dad2a154dc6a911733f326d0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.8.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
