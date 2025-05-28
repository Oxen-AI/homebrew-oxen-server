class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.7"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.7/oxen-server-mac-15.0.tar.gz"
      sha256 "ccc780856c42fd742415dbedcc8c35b0553129b293974b4d12fb4a5633742fa4"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.7/oxen-server-mac-14.0.tar.gz"
      sha256 "a9a6fe776b015ebc54f125f77c835de9034d65fb3c36c36554b3fba8b8a167af"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.7/oxen-server-mac-13.0.tar.gz"
      sha256 "bc76c687ec81050cf199898d091a9bdd0abe1da9957d1e3fd8acec4a6576db7f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
