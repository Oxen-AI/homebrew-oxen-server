class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.16"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.16/oxen-server-mac-14.0.tar.gz"
      sha256 "c478c8ff0ef2154d49682c7ad40eec8f026ae3a76039f93d58f2a9301472e0c1"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.16/oxen-server-mac-13.0.tar.gz"
      sha256 "5f4d7d86735907e102981ebb76e719b80dfead35bdf4007ea800e59f3e9dd392"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.16/oxen-server-mac-12.0.tar.gz"
      sha256 "d0f34597b461eeb63eccd488467ac204bbd90c0de5c045acd3918a9fe37cb7e8"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
