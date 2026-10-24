class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.65.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.65.1/oxen-server-macos-arm64.tar.gz"
      sha256 "4ea3cf8c45da0d240dc4a0cf535c51b48886b5d459fa8c89b02858df01e403c9"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.65.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "4efb35c06c31f1a1e3e86cdcc062172683b093b2f2356cf543a6965dc4177b23"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
