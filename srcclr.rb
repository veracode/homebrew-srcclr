require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.6.tgz"
  sha256 "ed5a8f936e420ee92230d0988cbabd9822c2206b6db64e74aabd213a56ff175b"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.6+dc49fc9c.24"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
