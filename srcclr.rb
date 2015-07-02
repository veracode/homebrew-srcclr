require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.9.0.zip"
  sha256 "72c1bfa93ae00531f7ebdd13a77c90cc5c3ac3c8095b15ef873820792c8950a7"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
