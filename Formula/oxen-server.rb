class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.63.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.63.0/oxen-server-macos-arm64.tar.gz"
      sha256 "ceb03502c79babab6fc69b240e50e3e3ba8ea1dd896813457a301faec26b93a1"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.63.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "0010890109ae7630140b4abfe8fe6eca3415c078368ccd4cf5fe2642e4869a41"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
