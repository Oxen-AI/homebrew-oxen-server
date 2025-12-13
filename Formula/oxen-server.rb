class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.41.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.41.3/oxen-server-macos-arm64.tar.gz"
      sha256 "3947e9581bbef30f6d5dc39173585b584259bf7b5fa0fa109d506cbcf7f4d25b"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.41.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "434e59f867f0a8d9806baac93a119a20cf83e461fbb8b4c289a22a681eb2f58a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
