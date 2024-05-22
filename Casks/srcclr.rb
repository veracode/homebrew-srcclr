cask "srcclr" do
  version "3.8.64"
  sha256 "793b1f06085dca8122dccef5a9e1c31f517cd3b0a5ec6de51c83aa80cff25004"

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
