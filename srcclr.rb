require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.0.8.tgz"
  sha256 "8bc2f1be205c3bbd1d9ef5f30c178fedff02285c3a946ac760ee19c9fb63881e"

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
