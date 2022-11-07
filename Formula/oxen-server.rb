class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.2/oxen-server-mac.tar.gz"
  sha256 "950a244184d90bf31535d505ef4734ddf7d39279026cb10f37badc72714ee59e"
  version "0.2.2"

  def install
    bin.install "oxen-server"
  end
end
