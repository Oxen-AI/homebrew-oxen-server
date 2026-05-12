class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.50.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.0/oxen-server-macos-arm64.tar.gz"
      sha256 "ce0c7cfddf799198fc38bb1b6f42a318bd53a19ed41a925241d1e9f45f251b44"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "d244869d11f77437d90c1abfa00194c6733fda01840bbd9ed39e54484bbf347f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
