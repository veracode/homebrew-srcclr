require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.5.11-macosx.tgz"
  sha256 "07a4d617a4aecc711a8c256f3968923ee4008952aaa9db6248750363fcfb845d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.11"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
