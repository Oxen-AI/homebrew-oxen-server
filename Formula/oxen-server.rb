class OxenServer < Formula
  desc "Lightning fast data version control system for structured and unstructured machine learning datasets. We aim to make versioning datasets as easy as versioning code."
  homepage "https://oxen.ai"
  license "Apache-2.0"
  version "0.49.0"

  on_macos do
    depends_on macos: :big_sur

    on_arm do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.49.0/oxen-server-macos-arm64.tar.gz"
      sha256 "1721d6f4daa00049b89a67176835beb1cb32e0cca2272bda49f8ffa71d05e075"
    end

    on_intel do
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.49.0/oxen-server-macos-x86_64.tar.gz"
      sha256 "a184c4e635c23682bbc5e164ddd6fde8c95c5c5b83cd6b6c4a51984a183a80b8"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
