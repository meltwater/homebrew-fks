class Helm3 < Formula
  version "3.4.1"
  desc "Helm is a tool for managing Charts. Charts are packages of pre-configured Kubernetes resources."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/helm3-v#{version}/helm-v#{version}-darwin-amd64.tar.gz"
  sha256 "71d213d63e1b727d6640c4420aee769316f0a93168b96073d166edcd3a425b3d"

  def install
    bin.install "helm3"
  end

  # Homebrew requires tests.
  test do
    assert_match "v#{version}", shell_output("#{bin}/helm3 version --short", 0)
  end
end