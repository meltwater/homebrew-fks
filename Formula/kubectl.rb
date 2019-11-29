class Kubectl < Formula
  version "1.15.6"
  desc "The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kubectl-v#{version}/kubectl-darwin-amd64.tar.gz"
  sha256 "5f075714f5a5139eed670782b93013656b483f991722a04d3a3e03d3c3ff931a"

  def install
    bin.install "kubectl"
  end

  # Homebrew requires tests.
  test do
    assert_match "#{version}", shell_output("#{bin}/kubectl version --client", 2)
  end
end
