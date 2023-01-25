class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.6/oxen-server-mac-0.4.6.tar.gz"
  sha256 "4b0f6e2fd9ed404ed78d14c404c33a126cbc6f0d7e59dfbccca4f97a10ec2af1"
  version "0.4.6"

  def install
    bin.install "oxen-server"
  end
end
