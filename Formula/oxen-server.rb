class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.48.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.48.3/oxen-server-macos-arm64.tar.gz"
      sha256 "f99aa6a3ab67cd3a1ee8e0251f8c1b3b90e3f8c028d3a57429f230d1b6d2df4b"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.48.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "3d6385bf6d5e74b9a0508eba2d8924feb0f8b68e7c133ad0f791aa77d4170e7d"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
