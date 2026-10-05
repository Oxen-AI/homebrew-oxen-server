class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.61.1"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.61.1/oxen-server-macos-arm64.tar.gz"
      sha256 "4d42f2f01cab1347adb51bd7ca6d873a479a619437dff5b378d5bdba8d220ed1"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.61.1/oxen-server-macos-x86_64.tar.gz"
      sha256 "8c9ea419ea833dbcadf5303ed76a321c3cce4f0e1fd58744fc521b794ed505c0"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
