# This file is generated from the main-repo release archive manifest.
# Homebrew runs on macOS and glibc Linux, so Windows and musl targets stay
# in the canonical release manifest but outside the formula projection.
class Agenter < Formula
  desc "Agenter native CLI"
  homepage "https://github.com/jixoai/agenter"
  license "MIT"
  version "0.0.8"

  on_macos do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.8/agenter-darwin-arm64.tar.gz"
    sha256 "5db1347e3709650067964e421aa632f2ef56e38b4a44481999345d6969be095d"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.8/agenter-darwin-x64.tar.gz"
    sha256 "57ecbaaaa9b1b88cbd400a848744910305cda048845194bf8295a43561258ce4"
  end
  end

  on_linux do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.8/agenter-linux-arm64-gnu.tar.gz"
    sha256 "8dfc9e91ed6a0a5d936f1df09cd44e4d6acb77bd5e21bf4213a4a70d4ba6a50e"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.8/agenter-linux-x64-gnu.tar.gz"
    sha256 "e735b1a0c365847ee0d3350153b52a3bc5752895fb74fb9d264cd341ea2556ae"
  end
  end

  def install
    bin.install "agenter" => "agenter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agenter --version")
  end
end
