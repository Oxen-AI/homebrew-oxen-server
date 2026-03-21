class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.4/oxen-server-macos-arm64.tar.gz"
      sha256 "b13ce30e7dbe268c67352cbf74ae1cd2691ae880c118aca7fc2182a0f59f5705"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "c0c3433bfb6fe9d245c984419cf824babb8abaf2a6abd756c8ada0546e58d5e0"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
