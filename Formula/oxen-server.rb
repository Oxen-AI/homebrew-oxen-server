class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.3.0/oxen-server-mac.tar.gz"
  sha256 "647f6ee52c2482c3757b864e1878718ba2711bcbe1a8f4ed30ac438d58d00a5e"
  version "0.3.0"

  def install
    bin.install "oxen-server"
  end
end
