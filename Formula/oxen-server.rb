class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.56.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.56.1/oxen-server-macos-arm64.tar.gz"
      sha256 "aca255264d4bb3a83a0a330196dabd0a6ea2d1059b35dfb23bf593313137b09d"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.56.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "aa4de47b4ebb2f8d53ee150eec73962b660b61f94decdc9a16396a3a39621846"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
