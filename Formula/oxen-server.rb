class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.9"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.9/oxen-server-macos-arm64.tar.gz"
      sha256 "e9dc798ba17750637908cd8d437c29f279cbc30026b0b11cdc8fb22856cbc1c2"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.9/oxen-server-macos-x86_64.tar.gz"
      sha256 "055e7d7115ad192badb3cdf3f36dd0cdd70d4054c77e4b4d598e518bafaf20c7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
