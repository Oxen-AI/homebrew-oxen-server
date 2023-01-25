class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.6/oxen-server-mac-0.4.6.tar.gz"
  sha256 "ddecf0c390d50f4ff26d5a3a45bf4095f5f0ab50"
  version "0.4.6"

  def install
    bin.install "oxen-server"
  end
end
