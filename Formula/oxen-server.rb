class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.51.5"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.5/oxen-server-macos-arm64.tar.gz"
      sha256 "be40608ca955e8d894f450b98f466b279ef2c6513acc450797b104f9fb10bd5f"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.5/oxen-server-macos-x86_64.tar.gz"
      sha256 "aa49ecf614a2bf078c5f28b3cb431335f9bd885cbe1621698638db97550b5a80"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
