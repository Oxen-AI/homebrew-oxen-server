class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.37.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.37.2/oxen-server-macos-arm64.tar.gz"
      sha256 "87c9cb62bff9948354a69fbe3b715c6055c2cf317c9b206c9153d5026675171e"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.37.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "df011463595dd9c22563489909902ea7df133d471cba0f09272c83da4b9c912f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
