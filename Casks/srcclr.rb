cask "srcclr" do
  version "3.8.101"
  sha256 "290673bb30583e43d45d64104614aca40f99f6b1cb8ce56cac0642926be701b2"

  url "https://download.srcclr.com/srcclr-#{version}-macosx.tgz",
      verified: "download.srcclr.com/"
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
