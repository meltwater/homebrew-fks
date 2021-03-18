class Sops < Formula
  version "3.6.1"
  desc "Simple and flexible tool for managing secrets."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/sops-v#{version}/sops-darwin-amd64.tar.gz"
  sha256 "71b607504efedbde377c04da9af58c70742341435b438b89064c1674cf5fdb76"

  def install
    bin.install "sops"
  end

  # Homebrew requires tests.
  test do
    assert_match "sops #{version}", shell_output("#{bin}/sops --version", 0)
  end
end
