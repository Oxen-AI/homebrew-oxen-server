class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.62.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.62.0/oxen-server-macos-arm64.tar.gz"
      sha256 "4588d420d8026187be401e5217925bad0e11dccfa73f44662a46576aed4fb7b3"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.62.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "afdfe61dedb16993fc98aa65cd597f82db55e44999dbd4c402e2c0efa463ea9a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
