class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.55.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.55.0/oxen-server-macos-arm64.tar.gz"
      sha256 "56eff19a9b3fdfb3f1966debdf793cf8dbb43bf943268bc77903908e4de9cd4f"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.55.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "373acad55a020f9a6feb74e8167bca0b00a5c92e7f781506d41cb62f6e5261dd"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
