require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.sourceclear.com/console/srcclr-0.6.1.zip"
  sha256 "03b93588a11ffdd4c1948c0f96e755374d3d3917be545cf6b36651d337c82e9e"

  def install
  	inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"

  	prefix.install "srcclr-console.jar"
  	bin.install "brew/srcclr"
#  	bin.install_symlink "console.sh"
#    system "./configure", "--disable-debug", "--disable-dependency-tracking",
#                          "--prefix=#{prefix}"
#    system "make install"
  end
end