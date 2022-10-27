class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.0/oxen-server-mac.tar.gz"
  sha256 "70bd2fed694ed6e7f60567a1401c8d78be36186c70b9eef43463c682702d9688"
  version "0.2.0"

  def install
    bin.install "oxen-server"
  end
end
