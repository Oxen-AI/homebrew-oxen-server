class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.67.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.3/oxen-server-macos-arm64.tar.gz"
      sha256 "484bd39f7dbf36535e8fbe11a20c17d2c33bf5e6ff12d1e5fcc168933600d316"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.67.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "c713537a6ec742ae8b7bc2fb0a9173993395e0a863b591024ff49137f451ee44"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
