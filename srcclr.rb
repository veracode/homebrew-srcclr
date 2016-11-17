require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.7.2-macosx.tgz"
  sha256 "6f1e7e998530b28dcccb7df0f6676dc240fec029f79abc96c55bd7b562bd3d6a"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.7.2"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
