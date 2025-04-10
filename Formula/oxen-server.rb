class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.32.5"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.5/oxen-server-mac-15.0.tar.gz"
      sha256 "fc5af81d31a65dda053afd12d3b1d33f330508b81f3e324abc252a60c5c9e2be"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.5/oxen-server-mac-14.0.tar.gz"
      sha256 "d7a9e3e841cf7ee4665c80443de5119299d51e1edac6d285f25458574c76c313"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.32.5/oxen-server-mac-13.0.tar.gz"
      sha256 "fe939ce3043982701646f6ae87eb0daf5ad44e464f6284e4e741e1ab2afafa23"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
