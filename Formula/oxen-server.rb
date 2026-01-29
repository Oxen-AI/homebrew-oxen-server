class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.43.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.43.0/oxen-server-macos-arm64.tar.gz"
      sha256 "d27aecafb21cac695f6e53591d501c43882eb7210cf5c204b7d6f7064a2c0838"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.43.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "44205bad028cd10fd6b81e01446e6afcd793df72ca39a08a654d205a2ba8fb4d"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
