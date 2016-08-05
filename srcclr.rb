require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.4.4-macosx.tgz"
  sha256 "446b8c2f30bc8930272027473db96f0e31c7d0e6a08e435fd417f0a8a82a81ec"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.4.4"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
