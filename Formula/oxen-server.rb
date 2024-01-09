class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.19"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.19/oxen-server-mac-13.0-0.9.19.tar.gz"
      sha256 "d318f94b45812cc8e9fe15590db2dd854b042fb9892dbb0e77bd36f15255a799"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.19/oxen-server-mac-12.0-0.9.19.tar.gz"
      sha256 "5d7e60a5cc13bbfaceba5fff11014a6b7e0381ddb58757c737ebb265d368ab05"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.19/oxen-server-mac-11.0-0.9.19.tar.gz"
      sha256 "2e471363d022782a7828b9bc6d3669a202d9aedb5fdc69deb7b8d6992fdfa446"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
