require "formula"

class Srcclr < Formula
  homepage "https://sourceclear.com"
  url "https://download.sourceclear.com/console/srcclr-0.6.1.zip"
  sha256 "05625b71b8045b4c7a73243313a43843f2269d09151146abd6d7eeb7bc4a9b6b"

  def install
  	prefix.install "srcclr-console.jar"
  	bin.install "console.sh"
#  	bin.install_symlink Dir["#{libexec}/*"]
#    system "./configure", "--disable-debug", "--disable-dependency-tracking",
#                          "--prefix=#{prefix}"
#    system "make install"
  end
end