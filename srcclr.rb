require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.0.1.tgz"
  sha256 "0f1f4ec16ab026746ef2cbc2c36b8b81b66d196cbad1f176d7a932a1666ecd28"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.0.1+21a6d184.20151027"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
