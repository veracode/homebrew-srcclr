require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-1.9.17.tgz"
  sha256 "040d573df4fd76f8b667972fef459646fc10a56f21e765b79c4036eed58923f1"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "1.9.17+ef849d30.25"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
