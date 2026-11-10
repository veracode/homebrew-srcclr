cask "srcclr" do
  version "3.8.124"
  sha256 "986667cd0a23f4eb4841efcf2d1719bef9440a6195cd1946d6aabf1578a91a38"

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
