class Kubectl < Formula
  version "1.18.9"
  desc "The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kubectl-v#{version}/kubectl-darwin-amd64.tar.gz"
  sha256 "65f2606a4291bfbd474a2c7fe16572726a42be6e98582f521283f56df89c27e7"

  def install
    bin.install "kubectl"
  end

  # Homebrew requires tests.
  test do
    assert_match "#{version}", shell_output("#{bin}/kubectl version --client", 2)
  end
end
