class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.0/oxen-server-macos-arm64.tar.gz"
      sha256 "8b24797fe6524af8ce4ea2603dbfeb5e20ed14441974e4c3e705283e11bbee92"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "1b92f9252e0f19f58d7718de9afb4685c9a65ed3793174b8723f018c8c0ff0f2"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
