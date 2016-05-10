require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.12.tgz"
  sha256 "d921469c243ad851d3a15ba44885bb6ec61c73df55f3f178481235a33cd768d7"

  def install
    bin.install "bin/srcclr"
    man1.install "share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.0.11+99232eba.40"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
