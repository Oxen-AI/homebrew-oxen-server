class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.66.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.66.0/oxen-server-macos-arm64.tar.gz"
      sha256 "9d91e074e53f29d30e254e08ed4781b213735f955c0b7bc30ffe394c9ebb8187"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.66.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "4b7480ed678bceb1ea6bb0496bb128da264645accd1a3042c5cc2ca6ce30613c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
