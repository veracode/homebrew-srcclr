require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.7.3-macosx.tgz"
  sha256 "4887edc9b09e6de33fca94718612f44e9a0af893fe2322d5e8f2c9c63df7f954"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.7.3"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
