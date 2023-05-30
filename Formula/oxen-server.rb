class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.6.1+1"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.1%2B1/oxen-server-mac-13.0-0.6.1+1.tar.gz"
      sha256 "843cd7922e8616e7d48d9e5d3e52e21d9482a1635b61ecb6003aac5f75b6ccdb"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.1%2B1/oxen-server-mac-12.0-0.6.1+1.tar.gz"
      sha256 "70f4a3c8c98c1e6a9e57cde451fe95b98f3a8496ad6e6cf3276da6f06a964092"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.6.1%2B1/oxen-server-mac-11.0-0.6.1+1.tar.gz"
      sha256 "569695f5da5a2dfbeb56e9c031edf33f2f82592f37a54a5bf0da52f4f8b099ce"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
