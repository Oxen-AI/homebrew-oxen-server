class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.42.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.4/oxen-server-macos-arm64.tar.gz"
      sha256 "40a4787fd81d81e9b31db0a7281927d923de8959defa3a5b60f8a32d410ac791"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "dfbd26efd984f612dd988a4eb24d33fee1f2b54e130085760d4852e6bc026e92"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
