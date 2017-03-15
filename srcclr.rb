require "formula"

class Srcclr < Formula
  desc "The command-line interface to the SourceClear platform"
  homepage "https://www.sourceclear.com"
  url "https://download.srcclr.com/srcclr-2.10.7-macosx.tgz"
  sha256 "54a8f7af6431fb41a3c8ec9065fdfc0eefe2511ca35b0618b5cd34dc5f0d043d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/srcclr"
    man1.install libexec/"share/man/man1/srcclr.1"
  end

  test do
    tar_version = "2.10.7"
    assert_equal "Version: #{tar_version}", `srcclr --version`.strip
  end
end
