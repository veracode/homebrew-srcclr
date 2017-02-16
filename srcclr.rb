require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.2-macosx.tgz"
  sha256 "93ac55ff0bea3d945e671407e2d88443db89f2caee66c21fb5b0a932f9257662"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
