class Helm2 < Formula
  version "2.17.0"
  desc "Helm is a tool for managing Charts. Charts are packages of pre-configured Kubernetes resources."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/helm2-v#{version}/helm-v#{version}-darwin-amd64.tar.gz"
  sha256 "104dcda352985306d04d5d23aaf5252d00a85c083f3667fd013991d82f57ae83"

  def install
    bin.install "helm2"
  end

  # Homebrew requires tests.
  test do
    assert_match "v#{version}", shell_output("#{bin}/helm2 version --client", 0)
  end
end