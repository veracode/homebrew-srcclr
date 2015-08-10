require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.12.1.zip"
  sha256 "2c7a2f6585c614f1e0e701f7b4ba5c1f02551cf6026ace06f27d766e30b8dbf0"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
