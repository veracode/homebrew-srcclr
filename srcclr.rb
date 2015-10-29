require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.0.3.tgz"
  sha256 "4cceaa93f5ad78e4254e406b35d9630e86266fbd657c42965528034e55de3455"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.0.3+21dd75e6.20151028"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
