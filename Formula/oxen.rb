class Oxen < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.2.0/oxen-server-mac.tar.gz"
  sha256 "cf414dc05d061b919250c76c4e8294d53a4401f3f5664dba3ac6b8d041af1505"
  version "0.2.0"

  def install
    bin.install "oxen-server"
  end
end
