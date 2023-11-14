cask "srcclr" do
  version "3.8.40"
  sha256 "b953f67a7b50c09ef73e55f1ea7e998b0fdbc5e31bf46766c3da2c18646aaa93"

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
