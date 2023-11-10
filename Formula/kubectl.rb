class Kubectl < Formula
  version "1.21.14"
  desc "The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"

  on_macos do
    on_intel do
      url "https://github.com/meltwater/homebrew-fks/releases/download/kubectl-v#{version}/kubectl-darwin-amd64.tar.gz"
      sha256 "348ad2075e0c07d4210a760706b3d0892766dfbe622a120827648a4ce1669c25"
    end
    on_arm do
      url "https://github.com/meltwater/homebrew-fks/releases/download/kubectl-v#{version}/kubectl-darwin-arm64.tar.gz"
      sha256 "88df2ca27da441da4c23427304b5206a51f25137e6c14056e7819a0ff9c57f7a"
    end
  end

  def install
    bin.install "kubectl"
  end

  # Homebrew requires tests.
  test do
    assert_match "#{version}", shell_output("#{bin}/kubectl version --client", 2)
  end
end
