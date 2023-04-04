class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.5.0"

  on_macos do
    if MacOS.version >= :ventura # 13
      if Hardware::CPU.arm?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.0/oxen-server-mac-0.5.0.tar.gz"
        sha256 "e1497c9bbe911d57a515236fa73c469277a6fe9c30234137c74ca27c30ecf5a0"
      elsif Hardware::CPU.intel?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.0/oxen-server-mac-x86_64-0.5.0.tar.gz"
        sha256 "42c6d29b847bf3f74e292e8af4835e3bea1bf47af417ab85e4256bd476f43713"
      end
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.0/oxen-server-mac-12.0-0.5.0.tar.gz"
      sha256 "d082268739309a1f31a0570531cf4ad41622034d56f61390ab31cba3d4f390b0"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.0/oxen-server-mac-11.0-0.5.0.tar.gz"
      sha256 "2dafcc9bfe6ca4491888446e5890d98337f30c685b5aa26e78347a93bcde9c8f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
