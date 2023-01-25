class OxenServer < Formula
  desc "oxen-server 🐂 is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  url "https://github.com/Oxen-AI/oxen-release/releases/download/v0.4.6/oxen-server-mac-0.4.6.tar.gz"
  sha256 "6c62e7e075e0adac6a791cfa7fe9dd34427d91f022ad0430819fb283788377dd"
  version "0.4.6"

  def install
    bin.install "oxen-server"
  end
end
