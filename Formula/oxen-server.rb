class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.60.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.60.0/oxen-server-macos-arm64.tar.gz"
      sha256 "ef997ee44f3df48b766d54ef19ecaea01be31c7897a7d1db331e2b0d0965735c"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.60.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "ef4bc68ec6b5d4627bb9efd95166af03464bc79a50bed40ac5a4aedf9cf094f8"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
