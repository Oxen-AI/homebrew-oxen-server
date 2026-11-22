class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.68.2"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.68.2/oxen-server-macos-arm64.tar.gz"
      sha256 "d75d80bddaa0ef2197800e84fd5e677fdeeb5cdd66e62f35cee74b3665480837"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.68.2/oxen-server-macos-x86_64.tar.gz"
      sha256 "6e97071bf2fc7dc7b2b31b911ca2cacf24a4680b4e1bab1e84d1fee0dd7fb321"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
