cask "srcclr" do
  version "3.8.121"
  sha256 "5f08082357a4160534b6f6476b791427352023f20b5ed72d48b2d88f549f8735"

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
