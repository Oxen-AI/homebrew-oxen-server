class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.1/oxen-server-mac.tar.gz"
  sha256 "8f8b837f2cdad526fcf3847113122be2022316bd6403b9bfac892ac30f2573a9"
  version "0.2.1"

  def install
    bin.install "oxen-server"
  end
end
