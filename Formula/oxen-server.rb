class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.50.5"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.5/oxen-server-macos-arm64.tar.gz"
      sha256 "8f2ace277078effff424b39facd8e1662573b38718b30ca249c44ac60d6ae83d"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.5/oxen-server-macos-x86_64.tar.gz"
      sha256 "a607a256941cf644c0d92ae136cd52fad8ca38ee740a84d012d4c0c9fc192343"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
