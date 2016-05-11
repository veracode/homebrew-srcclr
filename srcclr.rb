require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.13.tgz"
  sha256 "31431d72e08b81b156b01904afba44b31e8712d91b1cdab799b4e301fb73627a"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.11+99232eba.40"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
