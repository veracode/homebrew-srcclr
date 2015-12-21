require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.1.2.tgz"
  sha256 "06e929af405b73ff194bd64611568320d6da4eff2a6ec2063b821e5917a02e95"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.0.6+fe32cc7d.20151104"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
