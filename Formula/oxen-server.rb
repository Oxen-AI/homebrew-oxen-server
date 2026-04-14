class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.12"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.12/oxen-server-macos-arm64.tar.gz"
      sha256 "6a37187aeca83293e4ff234751f89bfe0efbc1d4ebd88d83206b54bc9b249966"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.12/oxen-server-macos-x86_64.tar.gz"
      sha256 "1bdfb116e233293ed425aedb31ddd58352f39ddfad56d16aed0477ac7b009dd9"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
