class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.33.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.2/oxen-server-mac-15.0.tar.gz"
      sha256 "f4ffaddd59dc51c776b2d72bee10987076ad89d69c782617b94a8b6982e9ba76"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.2/oxen-server-mac-14.0.tar.gz"
      sha256 "88fd7a1ab06386e88e37334fdad2a9b39e22ab90ddc6d4d3ad72e3729eb6dec6"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.33.2/oxen-server-mac-13.0.tar.gz"
      sha256 "00e71d46b2385711380c17d36d9633c99674f9db9cfa4f374791f51314dabdb2"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
