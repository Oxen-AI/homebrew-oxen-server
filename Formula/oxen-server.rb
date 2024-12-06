class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.23.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.23.0/oxen-server-mac-15.0.tar.gz"
      sha256 "e6838fccb79879ab7e5fc050f8444f1541af72813322770710a6fc5534e4c31b"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.23.0/oxen-server-mac-14.0.tar.gz"
      sha256 "763a2078f99d13c238408e6f5dd1090a03cb1bc9a823c2035925c9474847a207"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.23.0/oxen-server-mac-13.0.tar.gz"
      sha256 "e0a71f3c875b08285b0595e9363663f447fed8e99d51028c66146b785c87a330"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
