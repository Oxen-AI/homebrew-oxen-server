class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.45.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.45.0/oxen-server-macos-arm64.tar.gz"
      sha256 "68dfd3377ec4cd274e3e80b21b73c9691251662565cb2ce4fa2ab7216a4bb693"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.45.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "a1578976488d87c9871ded4bbf5c670139aad9979827e93b0eb57996b54c8928"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
