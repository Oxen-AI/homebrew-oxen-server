class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.13"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.13/oxen-server-mac-14.0.tar.gz"
      sha256 "0522f31828448f0b11ae78c3eeba7854184b26d636db2dc6723b849aad927353"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.13/oxen-server-mac-13.0.tar.gz"
      sha256 "043771683010810e818e705be1c645fedf804ed51f8f53c6420a34bfa6fee608"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.13/oxen-server-mac-12.0.tar.gz"
      sha256 "043771683010810e818e705be1c645fedf804ed51f8f53c6420a34bfa6fee608"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
