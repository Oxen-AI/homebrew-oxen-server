class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.14"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.14/oxen-server-mac-13.0-0.9.14.tar.gz"
      sha256 "27fa4f33b4d484cd44c1117aedbbf0aedf36972ccf02eb59fca161286e4e965b"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.14/oxen-server-mac-12.0-0.9.14.tar.gz"
      sha256 "cb5ae6168d7d4926336d03f6052b041cc9c9e917edd8f0b2c41eea320624e9e6"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.14/oxen-server-mac-11.0-0.9.14.tar.gz"
      sha256 "2d87324b8a44e30bd6a8a978a946fb678612c3cc85190c892e2eb2aac4ff89f7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
