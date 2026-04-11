class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.11"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.11/oxen-server-macos-arm64.tar.gz"
      sha256 "a0c78610fac27a18c722dd352f33410296dfca009f82056efc023e37026a3fb4"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.11/oxen-server-macos-x86_64.tar.gz"
      sha256 "36ea517cf04055a3a7d1ffa2193e5744ffbd639b3e7969f98442b3f7e61555b6"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
