cask "srcclr" do
  version "3.8.122"
  sha256 "69af633830d36d098907877f14cd60dccf03659cca5147786a75be6b02f87fc9"

  url "https://download.srcclr.com/srcclr-#{version}-macosx.tgz"
  name "srcclr"
  desc "Command-line interface to the Veracode SourceClear platform"
  homepage "https://www.sourceclear.com/"

  livecheck do
    url "https://api.sourceclear.io/generations/1/CLI"
    regex(/^v?\.?(\d+(?:\.\d+)+)$/i)
  end

  binary "srcclr-#{version}/bin/srcclr"
  manpage "srcclr-#{version}/share/man/man1/srcclr.1"
end
