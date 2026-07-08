class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.51.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.2/oxen-server-macos-arm64.tar.gz"
      sha256 "896d5670243256474d73eeffb475f310a7944d1c7b259fe029b16362860d510d"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "bf0d9c2bd1e26d6fcdae275f980fb2867101a188c4b494dcd0933e710b3bb35b"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
