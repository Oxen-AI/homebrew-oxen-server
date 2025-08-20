class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.36.5"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.5/oxen-server-macos-arm64.tar.gz"
      sha256 "d581f11bd7aa5818a680b18787629fcd12683fb25a425ec53cf723ea727a0120"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.5/oxen-server-macos-x86_64.tar.gz"
      sha256 "05ff9f0c4b44e299c52df5ec7bb24c146f73e224ff5256e42ea34e5d7a6cae9a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
