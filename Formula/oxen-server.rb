class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.4/oxen-server-mac.tar.gz"
  sha256 "8be7faffd4854d06efb6685ef1a66f8f0fca5676cb8c3cbefc9688f6bfa6b302"
  version "0.2.4"

  def install
    bin.install "oxen-server"
  end
end
