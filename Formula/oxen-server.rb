class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.8"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.8/oxen-server-macos-arm64.tar.gz"
      sha256 "5fca950ee5e981891a971886ed6b7ede2e3975c64b7b0251a7505a635b94c91e"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.8/oxen-server-macos-x86_64.tar.gz"
      sha256 "e05315ec3fb487c1c721ebdb88fc5ac2ce6de417aacd26bd2472b69a3fbffe5c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
