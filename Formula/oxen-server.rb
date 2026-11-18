class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.68.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.68.0/oxen-server-macos-arm64.tar.gz"
      sha256 "39724ac381fc9d40e13eb3d2345309a6009d0fa22b6112e54a22bad44bb6b2b8"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.68.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "dd1a227d6f51a3eb6f682cbcbda73a1f9333e83b7f21cc45755deb4b3243727b"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
