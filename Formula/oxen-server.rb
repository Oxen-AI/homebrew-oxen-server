class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.3/oxen-server-mac.tar.gz"
  sha256 "31094a45104f1e56e8d46f49ebf2c1309da07036b8e87060025a316e6da3fb1c"
  version "0.2.3"

  def install
    bin.install "oxen-server"
  end
end
