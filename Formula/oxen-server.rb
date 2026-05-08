class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.49.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.49.1/oxen-server-macos-arm64.tar.gz"
      sha256 "db066290303926aac890da1bd46ce5f011da160d64171f13e63c38bf2126ffda"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.49.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "346615f64b00c5758e47b6e2c2a77c06766fe84d196cda3260ac609b211e8cef"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
