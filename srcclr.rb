require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.10.2.zip"
  sha256 "bfc637cbfdc0ff8b61f48972354a9df1dc7a8870e1f3673d2d60d9c97707f331"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
