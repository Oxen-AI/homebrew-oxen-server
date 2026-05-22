class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.50.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.1/oxen-server-macos-arm64.tar.gz"
      sha256 "963956115aa3a892562825c9b4c29a9719579824188552b126207886ea578729"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "de3a383670297184b6133fb9ed339e5763191b9242a558740337f9e2548a569c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
