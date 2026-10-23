class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.65.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.65.0/oxen-server-macos-arm64.tar.gz"
      sha256 "b76546a84c638da774c4425c86be344cf3cd0889c31f0dba7399a001c66e3879"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.65.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "7f5bf28f709ed9c1260752ffd651297bb7f303e11b17c9f7430a637e46fcf166"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
