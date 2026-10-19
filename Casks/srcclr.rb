cask "srcclr" do
  version "3.8.123"
  sha256 "479a7787d150754ccf4c3612ce2e5f6dfa10a404e52a4d1b7ae160161159f769"

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
