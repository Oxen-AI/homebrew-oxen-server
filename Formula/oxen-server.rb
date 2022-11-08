class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.2/oxen-server-mac.tar.gz"
  sha256 "fc8ea46be06b3edf1034f14934f430da11a0555d74c49f4c140bf43920db90ff"
  version "0.2.2"

  def install
    bin.install "oxen-server"
  end
end
