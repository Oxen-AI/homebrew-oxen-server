class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.36.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.4/oxen-server-macos-arm64.tar.gz"
      sha256 "feb2ecf579c3dc126dafafe958169fb820e80c4ff5c24ddfa016c6133ada93ec"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "03d8ed56c57b1b0b7f3665f44b9eb46b89f4cd07bcf4df21eebfdeb6a7e9689b"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
