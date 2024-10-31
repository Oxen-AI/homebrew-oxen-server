class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.19.2"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.2/oxen-server-mac-14.0.tar.gz"
      sha256 "4fce5313adb7aa3369a839a29a0b30d6f2777d97999e8270f3bf82515134ba09"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.2/oxen-server-mac-13.0.tar.gz"
      sha256 "7d05f04b933e8171f5a1b5312794fc982f33758d34f8a5f6af934661f9b5e1ae"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.19.2/oxen-server-mac-12.0.tar.gz"
      sha256 "ddb8f255b31b6ed041368e6181b3bafe0571435df74e2c4353c0c238551fff63"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
