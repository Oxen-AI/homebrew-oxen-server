class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.8/oxen-server-mac-0.4.8.tar.gz"
  sha256 "e5f1ad41d75258e6693744e604711fbf049b07da7105596322128f98f594d627"
  version "0.4.8"

  def install
    bin.install "oxen-server"
  end
end
