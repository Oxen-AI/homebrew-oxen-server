class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.2/oxen-server-macos-arm64.tar.gz"
      sha256 "8d46efcf3fba777c53210cc501800d2e35096696381d787645e0081c15d408c5"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "41a4550e29815a51619f4d62252c354ce0afd4f0b53de0334ccad5692429ffa4"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
