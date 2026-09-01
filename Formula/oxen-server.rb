class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.56.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.56.0/oxen-server-macos-arm64.tar.gz"
      sha256 "17c893bcd2126797d9aa820ed056adeb82aa55c9f2db1dcd74bc76470af76615"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.56.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "3ca31ca0987ad88685336ed3398190afe1b94f5e7b4086ee0a479a64851a3016"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
