class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.13.0"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.13.0/oxen-server-mac-13.0-0.13.0.tar.gz"
      sha256 "fbe165b5efa62e9a1108ef0ef9d8e6c6750d41540ca871daf4b7492c96cea99f"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.13.0/oxen-server-mac-12.0-0.13.0.tar.gz"
      sha256 "3be6e56ae5e3b69dac88970dac8c3d86dc78711c00cc1495d142be0954fa043b"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.13.0/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "497cc99cf5f32357da937a0518b94720f90c8da3f5773d30ab5f551d378ead76"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
