class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.37.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.37.3/oxen-server-macos-arm64.tar.gz"
      sha256 "d2b817ed1423e95907baf2078ce80ef1b274807fefb63cd71f9f80772bbb5ae8"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.37.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "ebec02a84f2a320317c39408da27a9eaed93c4ad0b1041dfe55b56161f9df9ff"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
