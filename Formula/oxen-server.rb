class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.25.3"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.3/oxen-server-mac-15.0.tar.gz"
      sha256 "a64007e6381c971d65b37d047ff8e265ff95281d2f453d9c0bd39717caa2414c"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.3/oxen-server-mac-14.0.tar.gz"
      sha256 "37da4fb030ef7b5fbcf9f0177d34875b0a95ae3c8cf8c05556db6f81db72fac8"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.25.3/oxen-server-mac-13.0.tar.gz"
      sha256 "65bcf9138fe4e156b20dcba8a0e04eca6b0148283b11921f30937e1466248ef7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
