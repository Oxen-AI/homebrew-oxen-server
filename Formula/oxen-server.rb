class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.65.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.65.2/oxen-server-macos-arm64.tar.gz"
      sha256 "5936ff639b1a4d9ca895a14f84e22d00fd5e6f9cf1f254d9ec6be7a3fb2deee4"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.65.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "1a34400da451c09a48685e32030fb0111c3ef72246e8b8d756fc81ebcb02a3f2"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
