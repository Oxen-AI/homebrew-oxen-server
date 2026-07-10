class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.51.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.3/oxen-server-macos-arm64.tar.gz"
      sha256 "397fd21c1134fceb4d092addd4e1467615e811c05d1f081fa7769fe04b57f603"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.51.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "26868d7649f103834ef7ee031ac6b5be8729146d80793ca8fd88b8a21ee6767c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
