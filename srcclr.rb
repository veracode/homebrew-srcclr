require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.srcclr.com/console/srcclr-console-0.8.5.zip"
  sha256 "f3a3df9fa68698ca6475c97f84ea2ca7290052fdb2f7f561775c44af8ea65f26"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
