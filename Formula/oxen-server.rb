class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.4.9"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.9%2B1/oxen-server-mac-0.4.9.tar.gz"
      sha256 "9775c7d091868656e57e59848717820537cd809ecb36d29ee31e50e1ab8099ab"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.9%2B1/oxen-server-mac-12.0-0.4.9+1.tar.gz"
      sha256 "270d5d1b981f19cc8f950ae5a6e1e57cac13bedca3062793d42f464cd1d14b2f"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.9%2B1/oxen-server-mac-11.0-0.4.9+1.tar.gz"
      sha256 "f3119c6515a54edbcab036af79b3212cbcc5c558e6d2d7ac0c26474d4bbe198b"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
