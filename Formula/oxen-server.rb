class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.40.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.40.3/oxen-server-macos-arm64.tar.gz"
      sha256 "f060e500ff7c5e70c9db3aa90c8b19c37ac5bf573dfbb1ab5da7934c644bca70"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.40.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "953944822293b7060f2c6db884264f7fbe93a1ccb9fab580fa76f8aef66fc76f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
