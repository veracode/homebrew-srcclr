require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.6.0-macosx.tgz"
  sha256 "a4d7859494536eb1df690fbc5b51600995c307fd383bcf973f91f8e3713e128d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.6.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
