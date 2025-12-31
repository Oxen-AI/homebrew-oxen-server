class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.42.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.3/oxen-server-macos-arm64.tar.gz"
      sha256 "dfd3ec692c46e83212e25741239bbdb4b7af32d79cd66e5f8afe03f88fd4b832"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "d6e1d9fda2206a2409cffc6feb3d9be2796e3a065e5565a0027898ed282984bc"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
