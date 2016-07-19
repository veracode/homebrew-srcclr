require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.4.0-macosx.tgz"
  sha256 "3d930d87bc61510e226aacc79fe5112078cfa69505b537eec742cc4827ee26b6"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.4.0"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
