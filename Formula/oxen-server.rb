class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.50.6"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.6/oxen-server-macos-arm64.tar.gz"
      sha256 "f5b6b1b7d2055d34a762f02949f6ab6b2246c279717711e0d280b88cdfe769f0"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.6/oxen-server-macos-x86_64.tar.gz"
      sha256 "2616ae57fdaf05257c35abea8d6ff3a52eb4b0dfd67cb513fdaf0fd5925a7532"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
