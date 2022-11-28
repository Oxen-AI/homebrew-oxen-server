class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.5/oxen-server-mac.tar.gz"
  sha256 "3a7280b5c6477d86149c9706d35d7f9f9935adf299449289d2e83418f688efea"
  version "0.2.5"

  def install
    bin.install "oxen-server"
  end
end
