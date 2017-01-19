require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.8.6-macosx.tgz"
  sha256 "5bcb11e89e2629f2a2cf8198f90d916ef58141a29c541c8cbc0d59be5cbd1e0f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.8.6"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
