class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.22.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.22.2+1/oxen-server-mac-15.0.tar.gz"
      sha256 "a1d17044108fa6b8a2f0922d402103c0e43a1a01be9115ab5bd825180771de51"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.22.2+1/oxen-server-mac-14.0.tar.gz"
      sha256 "923807ae43b87203391c26c41098914dbafc0e951ed7ad896a2fa6b338409ef0"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.22.2+1/oxen-server-mac-13.0.tar.gz"
      sha256 "515d6b10d367e8ccb0e5c67d737de1d03ddf2e192499b284fb621106a5b3b0bf"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
