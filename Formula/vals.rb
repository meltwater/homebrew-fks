class Vals < Formula
  version "v0.13.0"
  desc "Helm-like configuration values loader with support for various sources."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/vals-#{version}/vals-darwin-amd64.tar.gz"
  sha256 "e92547c0d691240e51fee2d06ae4ee0549e2e72de290e7d03cee56e418476db2"

  def install
    bin.install "vals"
  end

  # Homebrew requires tests. vals doesn't provide a version command
  test do
    assert_match "vals", shell_output("#{bin}/vals", 0)
  end
end
