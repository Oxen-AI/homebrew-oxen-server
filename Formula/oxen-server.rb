class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.7/oxen-server-mac.tar.gz"
  sha256 "e8e7a74832602c13834715c928dd76362b91a4dedf769f3837a064cdfcf09528"
  version "0.2.7"

  def install
    bin.install "oxen-server"
  end
end
