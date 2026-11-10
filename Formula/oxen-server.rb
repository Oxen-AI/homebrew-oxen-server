class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.67.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.1/oxen-server-macos-arm64.tar.gz"
      sha256 "2e70115c9bd7f2dcd7cbbefc12b655817502fbc3e2be9d7e306593a8d2fe20e7"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "5c6da6877465d7bd639889804bc1f31dc0ee26a1512eed9ced4b805367fbf8f7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
