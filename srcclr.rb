require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.0.tgz"
  sha256 "6c123f4f24ec4e7b3f5a2f6f5229974fabb1db70a5be30339ced2b76b6ec4f5a"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.0+c20f607e.9"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
