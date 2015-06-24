require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.srcclr.com/console/srcclr-console-0.8.8.zip"
  sha256 "c019bee61f482416f48b80bfaa02731227c0f962c750e032bcb6a3017e046911"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
