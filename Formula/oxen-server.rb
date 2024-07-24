class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.5"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.5/oxen-server-mac-14.0.tar.gz"
      sha256 "f155196e0d1402a13a3fa7c27f48893b34282014f94768d4ffc9bd9a7566d90c"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.5/oxen-server-mac-13.0.tar.gz"
      sha256 "4aeb1a18916942779077b3d299df898a45262cfdc87c20c6b3ca3b224827e357"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.5/oxen-server-mac-12.0.tar.gz"
      sha256 "807821d74b8e5d93d297eeb72c84afc3620feffe01758cd780309a2115d8069e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
