require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.8.tgz"
  sha256 "259953a6fbe2e41c1dbccc2a7940136d3f8f71d9192b550c7d4169e4fdde6c48"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "2.0.2+alpha1.0d11c07d.30"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
