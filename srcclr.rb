require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.10.4.zip"
  sha256 "39135e90b02a975e4c41384c8fd49cd4a27b47b76392e58caaefc10f8a3b51b0"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
