class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.46.7"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.7/oxen-server-macos-arm64.tar.gz"
      sha256 "1fd4192b35ba6649e1d313e4a67b465126a5411c0853f820bd133e4fe8ac32cf"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.46.7/oxen-server-macos-x86_64.tar.gz"
      sha256 "bc807a87c67bd33dc77688cb35c76dfaac9ebf26e5ae2b24f0c7430326c57f52"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
