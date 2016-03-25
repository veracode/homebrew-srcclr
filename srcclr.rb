require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.7.tgz"
  sha256 "51c91041c622cc1f75a57c9dadedfc70497e99a7b1dd90efeee2ab2a64db78cc"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.7+b10c389a.25"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
