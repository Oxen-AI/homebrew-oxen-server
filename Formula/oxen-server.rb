class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.59.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.59.0/oxen-server-macos-arm64.tar.gz"
      sha256 "f33b970ebd9eed29f620351236afed2ef95d0f08d3d296945512345b1d2fcbe3"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.59.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "64901d89f65dae0a2e7d9e3f3060d3d44fd3aaa3d7ef4f763f459e2592662c6c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
