require "formula"

class Srcclr < Formula
  desc "The Terminal interface to the SRC:CLR platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-1.0.2.tgz"
  sha256 "f48b18cdefa3d8eac7790d80e77fd8e41a43e6b5e56822ecaa60444b41ef59a5"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "srcclr"
    man1.install "usr/share/man/man1/srcclr.1"
  end

  test do
    tar_version = "1.0.2+76a10970.20151027"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
