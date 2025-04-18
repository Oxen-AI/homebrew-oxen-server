class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.33.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.0/oxen-server-mac-15.0.tar.gz"
      sha256 "cd71c795427db6484869be394a3ddac23c3a82958a6b1bf87dcd666804c5a60e"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.0/oxen-server-mac-14.0.tar.gz"
      sha256 "347e289a611fb8858931d4531927160cd021350adde3e78c032935e8fe846b29"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.0/oxen-server-mac-13.0.tar.gz"
      sha256 "895b6eac00ba099e44b108aa3fea7bbd4ed0b0a5c5e99983c7266a979be39bf9"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
