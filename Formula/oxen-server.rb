class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.38.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.38.1/oxen-server-macos-arm64.tar.gz"
      sha256 "6c008181ced9bf9d6e1d4a5dabc260502e3b28f39ae77e27e075c3bb8c5536e6"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.38.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "bb29522082a13993f0f792b9375002702a2c90207750b2983fd7dad7950a6b7a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
