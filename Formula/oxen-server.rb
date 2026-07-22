class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.52.3"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.3/oxen-server-macos-arm64.tar.gz"
      sha256 "d9e240f18ea6f6db9db00eac23438c18bd516828dacd2c41db1071294077c8e5"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.52.3/oxen-server-macos-x86_64.tar.gz"
      sha256 "6bbeb3f2da6dcc9599ba3ad23576b0f09674aa36149f490fbb98511c9495ac33"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
