require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.5.5-macosx.tgz"
  sha256 "39b6b889071d352e910e233a7290a22b1a8d1fb674c59bd74dc0ebdb004180c3"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.5.5"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
