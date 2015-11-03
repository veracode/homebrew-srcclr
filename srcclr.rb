require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.0.5.tgz"
  sha256 "bb448b4173e04127d9b33be21bf9f904b54e7e311e33be6cc1b484e62577f4b0"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.0.5+7c4242be.20151102"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
