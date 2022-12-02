class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.6/oxen-server-mac.tar.gz"
  sha256 "58fda791c3ced1dc2831b65d9f6f3724c73341da6b57db7840dab21807a2a21b"
  version "0.2.6"

  def install
    bin.install "oxen-server"
  end
end
