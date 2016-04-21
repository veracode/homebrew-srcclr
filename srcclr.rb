require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.10.tgz"
  sha256 "71d2311c12649d929dacf5e7b3b67de102de0a5ed68ae45abdfbd56e9720df6c"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.10+fb1551e7.29"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
