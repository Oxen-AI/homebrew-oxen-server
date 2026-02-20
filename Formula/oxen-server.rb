class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.44.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.44.2/oxen-server-macos-arm64.tar.gz"
      sha256 "96d526ea08003251ea681dfb5320c0a645671e16501376cbcda881a3a5b67335"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.44.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "47eaadd9d59a1f0f2d4b84128f1676c175ff44908f9188ce2466fcfbe70817df"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
