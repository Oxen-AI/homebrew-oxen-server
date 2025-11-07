class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.39.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.39.1/oxen-server-macos-arm64.tar.gz"
      sha256 "9e0cfc60f5126ed0decfe6e2e7b7d87b88d4fc5e1c8753ab3d16ad389d3b508d"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.39.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "419dcc93abaf284f51fbd5fdac751cb8ebdae744e8e4f4f20f077534563fb4bd"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
