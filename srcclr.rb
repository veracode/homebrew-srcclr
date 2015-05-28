require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.srcclr.com/console/srcclr-console-0.8.1.zip"
  sha256 "8673408d379686099fb8416501d39092160e36a3773e7304378c1b87c1eaead1"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
