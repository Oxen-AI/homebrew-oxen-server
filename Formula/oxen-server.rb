class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.68.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.68.1/oxen-server-macos-arm64.tar.gz"
      sha256 "6c0be56a531e1c12383f0a2cfa6e33abf28a31f15ae729db096d816c768c1956"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.68.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "7b6f01f5ce1ed96ad5f36a0ce34faa31655d13e09954d9b2c251add057c59d58"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
