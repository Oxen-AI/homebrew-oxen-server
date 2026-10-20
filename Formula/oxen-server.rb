class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.64.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.64.0/oxen-server-macos-arm64.tar.gz"
      sha256 "8029c5f2468cbd0b0dd050c8805dddb4f663efe5bd1cab76486c62f33e14c354"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.64.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "3070ffb178538f2669c633ce7cc473d204fd2d52034179c60d407bf3c120ec4e"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
