require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.6.1-macosx.tgz"
  sha256 "3655d17d30e4002943b2cd806667541df826481bac9e734be6f802883184a09c"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.6.1"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
