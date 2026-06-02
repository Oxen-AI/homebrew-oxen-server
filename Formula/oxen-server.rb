class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.50.4"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.4/oxen-server-macos-arm64.tar.gz"
      sha256 "1c93a465f3e7de89e2b123dddb09c3a72c6b50d0fdf0f8bbe46bcac6cc1500c0"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.50.4/oxen-server-macos-x86_64.tar.gz"
      sha256 "a63451019f1efd182bfe1f61c544b472430ba6540d09f5b927fff86f9bbfe1ea"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
