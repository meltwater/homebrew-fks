class Dyff < Formula
  version "v1.5.7"
  desc "A diff tool for YAML files, and sometimes JSON."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/dyff-#{version}/dyff-darwin-amd64.tar.gz"
  sha256 "8c616383ef5d8e8127ce9e620464f88a2195ff0906378864df69405baea1f2ad"

  def install
    bin.install "dyff"
  end

  # Homebrew requires tests.
  test do
    assert_match "dyff version #{version}", shell_output("#{bin}/dyff version", 0)
  end
end
