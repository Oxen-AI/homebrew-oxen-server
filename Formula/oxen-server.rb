class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.36.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.3/oxen-server-macos-arm64.tar.gz"
      sha256 "da387b51a18cc4fed614454020d5cdef8b20247025514f1ce0cda2b34d9ad418"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "2e81369efc2999246103b5a2860e19c44e7d3f27184d6cb7889b8b0bfe2e05c5"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
