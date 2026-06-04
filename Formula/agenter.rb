# This file is generated from the main-repo release archive manifest.
# Homebrew runs on macOS and glibc Linux, so Windows and musl targets stay
# in the canonical release manifest but outside the formula projection.
class Agenter < Formula
  desc "Agenter native CLI"
  homepage "https://github.com/jixoai/agenter"
  license "MIT"
  version "0.0.10"

  on_macos do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.10/agenter-darwin-arm64.tar.gz"
    sha256 "0286767a91f0bc6c8bc9fd1e47cf9fd502d9f9ab5bc6fc9fc9c9a2b07336e007"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.10/agenter-darwin-x64.tar.gz"
    sha256 "6e6933eebc6246b4b5189ab3ca04566512b0c7d49fccff31a9a06eabae12a633"
  end
  end

  on_linux do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.10/agenter-linux-arm64-gnu.tar.gz"
    sha256 "afe490ab94e37d8ee74fd98b82ee99bb112d934a0c15691b03172b9e4d460b97"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.10/agenter-linux-x64-gnu.tar.gz"
    sha256 "2fecafc994b3e92e709ba550b81e01039e387d71fd9bc44b9fa7140426c9d2dd"
  end
  end

  def install
    bin.install "agenter" => "agenter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agenter --version")
  end
end
