class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.4/oxen-server-macos-arm64.tar.gz"
      sha256 "55511e709ca8843765293b6c7dca3d8f394c0f6ccf4aa1ccc578dc943ca18e0b"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "f5d3be45ee039b847d80347b0e2db4ac9ae9c30e048e4a39ec2595974a0ecae1"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
