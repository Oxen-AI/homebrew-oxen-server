class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.1/oxen-server-mac.tar.gz"
  sha256 "64c4b41b680be01fb335373ed108d5d59f28b1a2d1d37b904771c444212e67ea"
  version "0.4.1"

  def install
    bin.install "oxen-server"
  end
end
