require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.sourceclear.com/console/srcclr-0.6.1.zip"
  sha256 "9ef81de980b54ae1eebf745792e91a7165d5e77685de341d4763c52baa8f4e9e"

  def install
  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
#  	bin.install_symlink "console.sh"
#    system "./configure", "--disable-debug", "--disable-dependency-tracking",
#                          "--prefix=#{prefix}"
#    system "make install"
  end
end