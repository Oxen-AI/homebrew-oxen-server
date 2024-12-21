class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.24.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.1/oxen-server-mac-15.0.tar.gz"
      sha256 "25726c7b88d477c4a4c5987738bbcf4db85abfa186702dcf08ad8e42a7255157"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.1/oxen-server-mac-14.0.tar.gz"
      sha256 "2f0a7b7e20d705414ac3258b8d6ec9d88350126dc7474ef1164d3a4e5596a7f6"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.24.1/oxen-server-mac-13.0.tar.gz"
      sha256 "b897d3f51175c7ddb3a8200b31c7d7b2d3c5d5a5bc152011e8803842357f4842"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
