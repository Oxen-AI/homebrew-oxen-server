class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.53.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.53.3/oxen-server-macos-arm64.tar.gz"
      sha256 "d0dccfb41161496e59b54dc806cee6497d6a167b50639ace61c65e9070bb158c"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.53.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "f3f86d94caa123a0826fe947e4f2fff436cc7bc78ba4eb133e52df03f45c3162"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
