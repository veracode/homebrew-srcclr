require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.3.tgz"
  sha256 "a7fec80397bc066f1a36b1345906dfce3c8a267a4e07e99b3e0065e0d9288eaa"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.3+ed1e8b5a.13"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
