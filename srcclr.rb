require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.8.2-macosx.tgz"
  sha256 "b39fa3a2e59f7ad84bb4df5dfda4a32a8c8065f0929e25b67c0337c904c71b42"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.8.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
