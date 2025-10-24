class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.38.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.38.4/oxen-server-macos-arm64.tar.gz"
      sha256 "a52b853f93bc5d0be123306ec89a7e572bb5eb036781c3e54e03f3340fb964ec"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.38.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "0af9cccb76197d0a185230d0d8ab270c5eb971a2394134e388f8d3cc289621b6"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
