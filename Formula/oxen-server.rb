class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.14"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.14/oxen-server-mac-14.0.tar.gz"
      sha256 "55836b37947e14d0939a1887e03a32785aa542bbd92e74c16117f307838b71c0"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.14/oxen-server-mac-13.0.tar.gz"
      sha256 "ff0d0b815ea7e7ce0c4c566d17dbdc075a0f5a17c2fcb9bc80af26306ac584c4"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.14/oxen-server-mac-12.0.tar.gz"
      sha256 "57b829884fd4e79fda33590c4b09780ea28d0a54592a5a03f43cde7b359044b4"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
