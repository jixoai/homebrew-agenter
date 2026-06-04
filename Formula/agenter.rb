# This file is generated from the main-repo release archive manifest.
# Homebrew runs on macOS and glibc Linux, so Windows and musl targets stay
# in the canonical release manifest but outside the formula projection.
class Agenter < Formula
  desc "Agenter native CLI"
  homepage "https://github.com/jixoai/agenter"
  license "MIT"
  version "0.0.13"

  on_macos do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.13/agenter-darwin-arm64.tar.gz"
    sha256 "458820bb9d406bf3aadd08aa63c314dba17f1b853122e323300dd4ecdcb8c167"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.13/agenter-darwin-x64.tar.gz"
    sha256 "5e27dc47426a47637c17f267f15440fabf210d025b08b4a56afa0bf9d35ccbec"
  end
  end

  on_linux do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.13/agenter-linux-arm64-gnu.tar.gz"
    sha256 "32d609d79d1d5b9c326f0d0f697834607e93162cd5b1b1181578a111d2b3e54b"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.13/agenter-linux-x64-gnu.tar.gz"
    sha256 "9b7d01a0f6f700c01c1c823aae76bc340ed901b7e4a918c46745260fc3bac6ff"
  end
  end

  def install
    bin.install "agenter" => "agenter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agenter --version")
  end
end
