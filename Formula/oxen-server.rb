class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.58.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.58.0/oxen-server-macos-arm64.tar.gz"
      sha256 "afb7c3d90ca688fa5a3e1a69aa09b995623961b51d6a39399438f54e4af00ea8"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.58.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "2319296a6cc7e683bc5ea195887df1168a5d79b8556fc105a98469169a4155a8"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
