class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.1/oxen-server-mac.tar.gz"
  sha256 "6e3f2deacc950908b8429b23f046fc90441eba7ac12028e5b0de6b3b26a5e0b4"
  version "0.2.1"

  def install
    bin.install "oxen-server"
  end
end
