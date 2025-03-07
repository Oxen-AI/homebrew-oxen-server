class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.29.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.29.1/oxen-server-mac-15.0.tar.gz"
      sha256 "c3f1906283667e3d59b3712b878a956310590bf7ff8fc53a3298c4ff13506dcb"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.29.1/oxen-server-mac-14.0.tar.gz"
      sha256 "0cb4f41adddd3205f1804fcfbda2c2db620d7feaa667c7139ee6c17d753803e8"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.29.1/oxen-server-mac-13.0.tar.gz"
      sha256 "309cd812a1d7b03569488abc30d9e7589ae0eac1575fee4eafe3a0a8c91adb0f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
