require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.sourceclear.com/console/srcclr-0.7.0.zip"
  sha256 "6fdae5ff1adf92c5f99821cf1aceae8144686bf71350ccf0bbabb526da14de10"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
