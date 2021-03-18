class Helmfile < Formula
  version "v0.138.7"
  desc "Deploy Kubernetes Helm Charts."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/helmfile-#{version}/helmfile-darwin-amd64.tar.gz"
  sha256 "a54743494f719e86aedc6ca990f2951fb13fe230ab2257c322e703063cc99216"

  def install
    bin.install "helmfile"
  end

  # Homebrew requires tests.
  test do
    assert_match "helmfile version #{version}", shell_output("#{bin}/helmfile version", 0)
  end
end
