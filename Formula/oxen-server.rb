class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.31.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.31.0/oxen-server-mac-15.0.tar.gz"
      sha256 "e2f10cccd031977cb937b3549aad96e6865c08bdefda17b2d2a9ec0ee4e50f07"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.31.0/oxen-server-mac-14.0.tar.gz"
      sha256 "0bb748ab60a1f6f45296abac3a9421a92ad2b7f8095607a301fa2f37fab37d51"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.31.0/oxen-server-mac-13.0.tar.gz"
      sha256 "1194f2a21206dd170ae94b5ef2b813c3358930edc6e3443e06b55936e099d122"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
