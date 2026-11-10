cask "srcclr" do
  version "3.8.125"
  sha256 "ec0b77384311889cccff4ac3d92922148369f155282e452b92662b8d2907d027"

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
