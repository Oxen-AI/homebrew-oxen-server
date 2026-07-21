class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.1/oxen-server-macos-arm64.tar.gz"
      sha256 "6c0829fd03f42081475d0671997b3854856ed36e467bfe1ca7352cf277160309"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "2ff4f1f7abc13b118d2637f1432dd1a99a9edd8c718544670df90a9dd301f777"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
