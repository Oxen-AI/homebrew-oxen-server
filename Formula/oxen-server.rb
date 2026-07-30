class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.6"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.6/oxen-server-macos-arm64.tar.gz"
      sha256 "b7235d45dbc0ef573ada991857177a9f2926682191a1f31649144b18a0ceecde"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.6/oxen-server-macos-x86_64.tar.gz"
      sha256 "80d78fdca52939af2b6aafc33705d74f6afbaaea98748332f9d0ba3eb58d43e7"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
