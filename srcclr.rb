require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.2.9.tgz"
  sha256 "8eded3cfd3c1da3b93f35e913a6694c91ea141aeafff2c2c114ed903f752111d"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.2.9+3dd57e33.28"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
