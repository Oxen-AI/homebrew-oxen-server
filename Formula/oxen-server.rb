class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.1/oxen-server-macos-arm64.tar.gz"
      sha256 "b81651e8bba7e651079234b1d543f0067577f075454e023d3ad8d23fe4d8fd79"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "8b872d9bb64810be72e5b0a606b0c2b1ef5d5d90bb9d8973ec3d5eb06b0cd294"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
