class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.3/oxen-server-macos-arm64.tar.gz"
      sha256 "40d9c0c78498b4ad452e328c106dea1b903a90023e1cc8569ec6e4d8c75a2243"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "b356af6cd193434b0b90e0ebb5752897234deb7e0218e8f6454f13aaf1d5b5a9"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
