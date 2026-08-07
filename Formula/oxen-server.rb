class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.53.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.53.0/oxen-server-macos-arm64.tar.gz"
      sha256 "9075ba1295b21a0d4db90f734ce49895872eb3ea824eb0a5db2771354c867935"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.53.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "26eb8d9a1eb2bb48808655d8afceab7729823344fc422e19b1bd0070de9cc2c6"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
