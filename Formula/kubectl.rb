class Kubectl < Formula
  version "1.15.6"
  desc "The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kubectl-v#{version}/kubectl-darwin-amd64.tar.gz"
  sha256 "1b8e747984ae3f9aa5a199bd444823d703dcd4dbf0617347b3b3aea254ada7b1"

  def install
    bin.install "kubectl"
  end

  # Homebrew requires tests.
  test do
    assert_match "#{version}", shell_output("#{bin}/kubectl version --client", 2)
  end
end
