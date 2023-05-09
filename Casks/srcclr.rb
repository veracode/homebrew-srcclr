cask "srcclr" do
  version "3.8.31"
  sha256 "19b4ee0ed67b3b23587bd3e2d0f6dd91e4315c7cbe429eb763277d69431f496b"

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
end
