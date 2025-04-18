class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.33.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.1/oxen-server-mac-15.0.tar.gz"
      sha256 "b8a45ea5baafcccbdc927186d6bcec9c7af756de053de897c02d96be1feec874"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.1/oxen-server-mac-14.0.tar.gz"
      sha256 "838f15e58ddda52475da316c5dd9196a8d2241e5f95ebe5b0cf3bf087aacfa53"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.1/oxen-server-mac-13.0.tar.gz"
      sha256 "524fc2a13867ef5d75887b4a7a774054e8b4b3d66027958184cdc94fb8135fca"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
