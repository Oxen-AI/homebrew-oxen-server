class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.30.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.30.1/oxen-server-mac-15.0.tar.gz"
      sha256 "05a57636d56df76b69bafaaacb54b938a0e293322d539c5dd012ef1b90c15561"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.30.1/oxen-server-mac-14.0.tar.gz"
      sha256 "9f9f61d6c5bfeeef929d805b64791ff9d60e15d16e6987669aa57dd0429f3044"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.30.1/oxen-server-mac-13.0.tar.gz"
      sha256 "df4cc26f01ddf23b894d0d88d80892c24f80fa10accd2fbe804d6053ec888c2c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
