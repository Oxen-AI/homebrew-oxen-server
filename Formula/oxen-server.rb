class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.0/oxen-server-mac.tar.gz"
  sha256 "ad7896ac9447bd89679219a2583b18cf1ce20834e4631e36956e08c53e0f5cc7"
  version "0.4.0"

  def install
    bin.install "oxen-server"
  end
end
