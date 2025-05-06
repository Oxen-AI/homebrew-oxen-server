class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.1/oxen-server-mac-15.0.tar.gz"
      sha256 "be2c1716020a401927b7f9c32398cdc8e7a6092dc557bb94e6ba76f585d9d009"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.1/oxen-server-mac-14.0.tar.gz"
      sha256 "4b77dc383d63bbf0b29547c7d428c2c91b1625f07e4ee67cba37b0786cd50681"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.1/oxen-server-mac-13.0.tar.gz"
      sha256 "79dc3d2fd8387a136e0bd17bef46afd7e03b7c2d32ccc65d648d77b7bc2c62a5"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
