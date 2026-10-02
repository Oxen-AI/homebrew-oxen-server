class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.61.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.61.0/oxen-server-macos-arm64.tar.gz"
      sha256 "679db122b03bc03139bcf78f421a1f92282d7436cb5847a89ca14bff0837f90b"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.61.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "0d5819271e0ead0311bfeb193df5175a26c1f9d3968ea7627a088ad06e5dd76e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
