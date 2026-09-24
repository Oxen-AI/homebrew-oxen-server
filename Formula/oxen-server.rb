class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.58.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.58.1/oxen-server-macos-arm64.tar.gz"
      sha256 "b1d77b56b295d62f4158d87d0ed006d0861d1f658ad2c69a08b7e42a09b2ae4a"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.58.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "2da3aef71419b2814531b53768652e2a6cb771bfa29dd067e280545e4dbf05c1"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
