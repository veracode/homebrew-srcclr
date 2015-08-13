require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.13.0.zip"
  sha256 "474e2b45bf8c085b3edd4ba3ddab8945645c55bfefdde0bb7b2413d5d1eeac01"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
