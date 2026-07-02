class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.51.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.1/oxen-server-macos-arm64.tar.gz"
      sha256 "f7a7ea14c78e0a4ddd0e926dcb1d5e1867df0dd3d459e453560e4d85260397e2"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "bb3044672ae8523bdd9d6a917ae7c906fe4686fe59d0edfbab848c15859f09b9"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
