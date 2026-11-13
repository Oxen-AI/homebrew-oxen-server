class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.67.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.2/oxen-server-macos-arm64.tar.gz"
      sha256 "c3a7277edce6a87b28d830de190eddfcdd1c874346c16305994d3ce6e8a0a58d"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "90efd38988dd6391510a7367b0f1fd87bc00e0828ae99d43b392be8fcaa586f3"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
