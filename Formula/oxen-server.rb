class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.67.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.0/oxen-server-macos-arm64.tar.gz"
      sha256 "79dd9925aa504e84d1d9e716d6ace15187932c2b39b55108ea3c0253c6292072"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "a78a5ece8a32e6f0c112997dff35020601d7f513de3097f07ca9941fd4642998"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
