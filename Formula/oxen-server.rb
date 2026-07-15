class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.51.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.4/oxen-server-macos-arm64.tar.gz"
      sha256 "46449f79ee81b4226e892af413fa3ce38bd932fc9393a68bdd0f0306aa2dd3b8"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "940878901c1e609554f66d14f4d4bb35b1f0003048aa566627e5d586a315f469"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
