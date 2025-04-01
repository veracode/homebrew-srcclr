cask "srcclr" do
  version "3.8.96"
  sha256 "3b236493030e0f6194e2b99a98213c4944c65a190a6e4486d02b20791f97c05d"

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
