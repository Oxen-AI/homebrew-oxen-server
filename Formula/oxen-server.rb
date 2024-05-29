class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.15.12"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.12/oxen-server-mac-13.0.tar.gz"
      sha256 "6a3d0d34fff80e6fa05aef9237632b5f8069e2217af09e23fbee39310ffa1972"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.12/oxen-server-mac-12.0.tar.gz"
      sha256 "974c97ea668bcb6f06c893652dd910606284c29f9aa500ac155cd3ade0fa877e"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.12/oxen-server-mac-11.0.tar.gz"
      sha256 "099e73d6552a9b09d1db230c34a6e0b5d64c6f323dfc62c03adb3fc3c6dffb61"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
