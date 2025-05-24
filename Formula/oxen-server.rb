class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.6"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.6/oxen-server-mac-15.0.tar.gz"
      sha256 "9155a9f6d91339b05eb6d4330e5b88446bc67a2fe9d3610737437fccaeca1aef"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.6/oxen-server-mac-14.0.tar.gz"
      sha256 "73b366aeaf08a5ecb91a171ceb3cdf9a3958a68d5dbbb9674e8d2306ee4c8412"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.6/oxen-server-mac-13.0.tar.gz"
      sha256 "c1bee3a26d25cc0c38d1422ed8a2ca2c9b9f24c5be31b35a598bfca5955c7dd2"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
