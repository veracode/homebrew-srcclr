require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.8.tgz"
  sha256 "9ea0c391ef9d77adf12aad03ab7ac3c0df04b1d530b8d2c021a7f769f3c62132"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.8+1b6bc62a.27"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
