class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.42.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.2/oxen-server-macos-arm64.tar.gz"
      sha256 "a4117d37af03a88dc299e3ad3696d73b8ee126a1f6bd4fe480180cf9635fc586"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "e27382189476737dfaf699622a79d2c74ce798f163b71d56a56d83d0674fb359"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
