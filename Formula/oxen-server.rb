class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.12.2"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.2/oxen-server-mac-13.0-0.12.2.tar.gz"
      sha256 "198124e836964e7f003b97ddf3216734c7a15a715b8e4d70e391d2ce294d22f5"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.2/oxen-server-mac-12.0-0.12.2.tar.gz"
      sha256 "488b1560cf4566b8b90a29b6a7371548f344fff77f36d200708453c2c8b21aba"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.2/oxen-server-mac-11.0-0.12.2.tar.gz"
      sha256 "27bb777b1eaf9cdfcd1f01272bb1d4472d71f8c47eaa05244dcdf1eee542a6db"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
