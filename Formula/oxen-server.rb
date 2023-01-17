class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.3/oxen-server-mac.tar.gz"
  sha256 "b23bfdddb974050d263dace2c6cb7a7853dad47dc05235d927238f948c1c6856"
  version "0.4.3"

  def install
    bin.install "oxen-server"
  end
end
