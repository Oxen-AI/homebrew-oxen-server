class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.10"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.10/oxen-server-macos-arm64.tar.gz"
      sha256 "6f0fad63db318238c4071d6aeed144dd7992dbb68d825073f09059e8860bc815"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.10/oxen-server-macos-x86_64.tar.gz"
      sha256 "c7bf9e60731c74747a5a3109ae4b12041fa7d8da2ce17542d88d89f0a58861b2"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
