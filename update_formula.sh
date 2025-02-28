#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

VERSION=$1

echo "Current directory: $(pwd)"

if [ ! -d "Formula" ]; then
    echo "Error: Formula directory not found"
    exit 1
fi

if [ -f "Formula/oxen-server.rb" ]; then
    if [ ! -w "Formula/oxen-server.rb" ]; then
        echo "Error: Formula/oxen-server.rb exists but is not writable"
        exit 1
    fi
fi

./compute_hashes.sh $VERSION > hashes.txt

echo "Extracting hashes..."
cat hashes.txt

# Server hashes - using more specific grep patterns
HASH_15=$(grep "\[SERVER\]" -A 10 hashes.txt | grep "HASH_15.0=" | cut -d'=' -f2)
HASH_14=$(grep "\[SERVER\]" -A 10 hashes.txt | grep "HASH_14.0=" | cut -d'=' -f2)
HASH_13=$(grep "\[SERVER\]" -A 10 hashes.txt | grep "HASH_13.0=" | cut -d'=' -f2)

# Debug output to verify hash extraction
echo "Extracted hashes:"
echo "HASH_15: $HASH_15"
echo "HASH_14: $HASH_14"
echo "HASH_13: $HASH_13"

echo "Writing to Formula/oxen-server.rb..."

cat > Formula/oxen-server.rb << EOF
class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "$VERSION"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v$VERSION/oxen-server-mac-15.0.tar.gz"
      sha256 "$HASH_15"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v$VERSION/oxen-server-mac-14.0.tar.gz"
      sha256 "$HASH_14"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v$VERSION/oxen-server-mac-13.0.tar.gz"
      sha256 "$HASH_13"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
EOF

if [ -f "Formula/oxen-server.rb" ]; then
    echo "Successfully wrote to Formula/oxen-server.rb"
else
    echo "Error: Failed to write to Formula/oxen-server.rb"
fi

rm hashes.txt