class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.10.15"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.15/oxen-server-mac-13.0-0.10.15.tar.gz"
      sha256 "3b1560aa5e44aaa34a91d927cdf4cf96db73b74795010295f093748560c1442c"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.15/oxen-server-mac-12.0-0.10.15.tar.gz"
      sha256 "82c22cf53a37eff39b800df81f7493bc59d3326aa72a7be8d34f2470382c8ffb"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.10.15/oxen-server-mac-11.0-0.10.15.tar.gz"
      sha256 "7b436790e73e20410aa813fc70e5407ff06f427c4d40a7fc7d66bef57a27f1c5"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
