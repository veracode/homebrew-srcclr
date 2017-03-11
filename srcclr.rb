require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.6-macosx.tgz"
  sha256 "6210496b0ca59b6a69a8e81c821771ccf09237f424b3db4b1abd9e4ca430a89a"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.6"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
