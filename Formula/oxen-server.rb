class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.48.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.48.0/oxen-server-macos-arm64.tar.gz"
      sha256 "e1664226718aab3c4fcf6a11e217b35f9e5b426008c1a2a73185f5e28e0cd63e"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.48.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "26c4c67449c9d7f74fc646ec1e71e1712bd7b5fb1c1faf94eb57c2686cfdee9d"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
