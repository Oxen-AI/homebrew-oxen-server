class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.53.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.53.4/oxen-server-macos-arm64.tar.gz"
      sha256 "d81f4cdfa57dc69ef5398a182f6e03560557c43d0786bbe7f00e72cc141c3b13"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.53.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "6e9bd631920d73f8dc1ee9595f0939f634e1d174d0187f978e2de301d043fb85"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
