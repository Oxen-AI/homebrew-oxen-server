class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.50.7"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.7/oxen-server-macos-arm64.tar.gz"
      sha256 "851251311195e8415cfff878899792b89dcd0d71848fbe7122e9dac29eb2e4e2"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.7/oxen-server-macos-x86_64.tar.gz"
      sha256 "5579887c9f0512be69ee7eee24b1d62c8b716567348c49c250067c874b4cad32"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
