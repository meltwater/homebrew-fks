class Kubectx < Formula
  version "0.9.4"
  desc "Kubectx is a utility to manage and switch between kubectl contexts. Kubens is a utility to switch between Kubernetes namespaces."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kubectx-v#{version}/kubectx_v#{version}_darwin.tar.gz"
  sha256 "8bd3b090ebafa87f5838e52fdd4f6faa603df2dd307af384c232eb6cd43b3eee"

  def install
    bin.install "kubectx"
    bin.install "kubens"
  end

  # Homebrew requires tests.
  test do
    system "false"
  end
end
