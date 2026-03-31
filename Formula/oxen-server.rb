class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.9"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.9/oxen-server-macos-arm64.tar.gz"
      sha256 "8ad3891bbd150fe2b761026e7d0f833223d4901e5b7a30b0acfde9d33b8bf146"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.9/oxen-server-macos-x86_64.tar.gz"
      sha256 "3f350b19aee059846750cd33421bd24ff0cc3dc60ccaf4d3bbec9c4d353f5138"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
