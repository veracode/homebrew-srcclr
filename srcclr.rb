require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.srcclr.com/console/srcclr-console-0.8.0.zip"
  sha256 "eb128f2304aebe961f0e5055bad75f906d240a68e2148e4e5ce7faffa4ce06b7"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
