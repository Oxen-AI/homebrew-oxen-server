class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.40.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.40.2/oxen-server-macos-arm64.tar.gz"
      sha256 "65a60e03634b1790812d1544a2e05fb507bfa93668dcf7802e82fc27cf437909"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.40.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "8faee7084827d71000f0adf2a9a0281248cbac753688a2ca114b9046e4b92483"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
