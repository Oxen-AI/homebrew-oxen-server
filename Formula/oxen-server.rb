class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.48.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.48.1/oxen-server-macos-arm64.tar.gz"
      sha256 "263ed536f3d65d85b55d1e88ad9b616f530c6a4c1585e0cea4b4587c9c642a50"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.48.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "70a31e31467ebfcbbc9733b498ad5f4f576f3a17f368ef8a1abe915a89f1b990"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
