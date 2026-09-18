class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.57.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.57.0/oxen-server-macos-arm64.tar.gz"
      sha256 "12bbfaaf89ffe6cb5ab0cd3b854fa69e97501f56b453cfcd77b61ffa72928825"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.57.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "32254fe7d82ecd647871ce6d160932aba825f4c47e99308917f88768206f5639"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
