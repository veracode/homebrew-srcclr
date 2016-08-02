require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.4.3-macosx.tgz"
  sha256 "2f36d7cefd7a2daf246b3f09fed54fe73f9eedb896a6b4a71789e86954202461"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.4.3"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
