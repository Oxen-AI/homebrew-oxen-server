class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.44.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.44.1/oxen-server-macos-arm64.tar.gz"
      sha256 "d08b795a0634157b37b6249c726f92ffad5ef674e6b469c94f2ee9d5920adb1a"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.44.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "48cfa0276ef0e2a8014dcbb3dc32206bf6012ca67f9814559bd30037f7cab997"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
