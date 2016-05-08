require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://srcclr.com"
  url "https://download.srcclr.com/srcclr-2.0.2+alpha1.tgz"
  sha256 "3e8f4ecb02edbefe4710c799caa40c9118aecf46fc1695cec4b57b74a5de1113"

  def install
    bin.install "bin/srcclr"
  end

  test do
    tar_version = "2.0.2+alpha1.0d11c07d.30"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
