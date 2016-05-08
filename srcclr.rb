require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.3%2balpha1.tgz"
  sha256 "ed3f9af2f70e4d2134bbb438ced3908067082e6351de7bad5cf9aa97dd406538"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "2.0.2+alpha1.0d11c07d.30"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
