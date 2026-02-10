class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.43.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.43.1/oxen-server-macos-arm64.tar.gz"
      sha256 "054a89fd429a7d64c8e7b1f1c6afa0eeb5ad21e5dd097868e0914ea92c315440"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.43.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "4123dda358a0f51f879f24c17cbf8ace2fca4c5ce81a225aebd353fb455db019"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
