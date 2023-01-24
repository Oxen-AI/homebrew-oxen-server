class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.5/oxen-server-mac-0.4.5.tar.gz"
  sha256 "574a415ec1ce83dc82cee26caa229fe48f7dd830"
  version "0.4.5"

  def install
    bin.install "oxen-server"
  end
end
