class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.37.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.37.0/oxen-server-macos-arm64.tar.gz"
      sha256 "16d83cf60267b7b1a035705fcd4db6a2277d6c6e0b545105711a4d7b2a2482a2"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.37.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "f7e5b12b6c85d6ad52e91fef51b4f12cb2d770637e403ed795358b3005baa4bc"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
