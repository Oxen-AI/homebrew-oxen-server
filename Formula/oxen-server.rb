class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.5"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.5/oxen-server-mac-15.0.tar.gz"
      sha256 "dfb47ab4a7acec8173190aca2df7d6d33f361b3dd1b135acb63921a9bd95a901"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.5/oxen-server-mac-14.0.tar.gz"
      sha256 "0bdae193504e62ac6c503f86ca99d9101a83b83ee777a11c491aafa7541bcfda"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.5/oxen-server-mac-13.0.tar.gz"
      sha256 "8ab63c260667b4e95cc8e3e1f28596a4663f76b1b15e27004d1accb695b41711"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
