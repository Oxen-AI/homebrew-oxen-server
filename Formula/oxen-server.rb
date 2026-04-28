class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.47.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.47.0/oxen-server-macos-arm64.tar.gz"
      sha256 "1d7338a69736fe998bfa33effe22e446bf783d1703e23b0d1d7eef0d43ed0cb5"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.47.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "6ed7b248d58a4b69a04b8fc4b60c3a9d1ed2422c0514597cee185049a19e17d5"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
