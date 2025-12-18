class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.42.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.0/oxen-server-macos-arm64.tar.gz"
      sha256 "91e9a6a9458e219f5b1c3bb9fbac6f91689aa254c4c0b8043eeec1b029e20d07"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "23c7b95dc56ed649d861ade15f129267ed76a64aca3e652810a6f11a10b9615f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
