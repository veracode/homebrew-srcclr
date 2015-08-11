require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.12.2.zip"
  sha256 "04ecbe5d0dd8fd694cb31077c8170158cb1213bfcf2a6b4ea8669fe1e1bf1519"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
