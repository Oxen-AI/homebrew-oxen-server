class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.15.0"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.0/oxen-server-mac-13.0-0.15.0.tar.gz"
      sha256 "2ad0ccdc741caf2b9397ab139fa36e9676f5b9e58d8e2c6003c42ddba7a81c6f"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.0/oxen-server-mac-12.0-0.15.0.tar.gz"
      sha256 "1af81514119747ef6ca801687c0cbaea43040372e021905ad7ca1f431fe738f3"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.15.0/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "7084493c3bb795276ae0e9e6196b8bb8e111083bca05cf3a3a4a1227e1c00d5a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
