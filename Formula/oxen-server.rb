class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.42.5"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.5/oxen-server-macos-arm64.tar.gz"
      sha256 "db10c503ce040474eecebdc1aecbf95382c3a78552849c9b0b2d32e1d0f2cd64"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.42.5/oxen-server-macos-x86_64.tar.gz"
      sha256 "78bebf3bb8bbd33dd95749d3825767ae18be180a3060c1dcb2f3ee36d4066215"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
