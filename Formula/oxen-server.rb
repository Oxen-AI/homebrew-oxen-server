class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.2/oxen-server-macos-arm64.tar.gz"
      sha256 "fa4129466cd46e83248818f6289e821861a1c7709271002548bac606cba057ab"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "c1c761430f9aee11a9dd1e66a3f0cc556c3b3d73490e11139a1c092191466108"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
