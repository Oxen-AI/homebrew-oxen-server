class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.20.0"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.20.0/oxen-server-mac-14.0.tar.gz"
      sha256 "e5c6ff62d481df29b1e55e39921a1f920210633472f5761a1e917f81e67e5441"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.20.0/oxen-server-mac-13.0.tar.gz"
      sha256 "721f019cf1740e277f8bca0a6bdbd257c6981136b3adee02daa93cf76bef04d4"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.20.0/oxen-server-mac-12.0.tar.gz"
      sha256 "ebbcd8f42d789812fa9a3e7a0108bc8c7f74059f308f0752b2b9c1cd0856f650"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
