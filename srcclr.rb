require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.srcclr.com/console/srcclr-console-0.7.2.zip"
  sha256 "8a14ada39b83d5766ec6c5120f16887f1db9f1da635d2d581e822ac7d2ab904b"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
