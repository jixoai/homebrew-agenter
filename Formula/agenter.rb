# This file is generated from the main-repo release archive manifest.
# Homebrew runs on macOS and glibc Linux, so Windows and musl targets stay
# in the canonical release manifest but outside the formula projection.
class Agenter < Formula
  desc "Agenter native CLI"
  homepage "https://github.com/jixoai/agenter"
  license "MIT"
  version "0.0.9"

  on_macos do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.9/agenter-darwin-arm64.tar.gz"
    sha256 "aa0e368c0ffea2012e9db74c4c8534ac353faa451d17474851c6d676475d3a69"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.9/agenter-darwin-x64.tar.gz"
    sha256 "6477d7e0768302b21e8a60c06ae8c37b9c26e31317f3daf894668bcc4a494219"
  end
  end

  on_linux do
  on_arm do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.9/agenter-linux-arm64-gnu.tar.gz"
    sha256 "022b982f99e33ab3c6006034dde6c1ae401613e3f3e9f5c485cb0fb349ab7dbc"
  end

  on_intel do
    url "https://github.com/jixoai/agenter/releases/download/v0.0.9/agenter-linux-x64-gnu.tar.gz"
    sha256 "b3d62090114da322b200b27e5c2d6168d3ce5f0721ef2783bcb89ae016ba2d76"
  end
  end

  def install
    bin.install "agenter" => "agenter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agenter --version")
  end
end
