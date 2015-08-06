require "formula"

class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.12.0.zip"
  sha256 "f0c7be24d4c654d503a76b0689f23699fda8374f66f4df596e2e784905b6bbb3"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
  end
end
