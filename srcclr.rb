require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.11.0.zip"
  sha256 "0fd1420f69e56e4ebf4ccc517c82ec3237d0bbbaac0ebe09c7b851c64b035050"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
