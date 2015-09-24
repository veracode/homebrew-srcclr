class Srcclr < Formula
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/console/srcclr-console-0.13.1.zip"
  sha256 "13ce6fdbae70a09e294c2b2230bafa4a127b85990c3bef39da725eefb8f2f069"

  def install
    inreplace "srcclr", "##PREFIX##", prefix
    prefix.install "srcclr-console.jar"
    bin.install "brew/srcclr"
  end
end
