class Kubectx < Formula
  version "0.9.4"
  desc "Kubectx is a utility to manage and switch between kubectl contexts. Kubens is a utility to switch between Kubernetes namespaces."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kubectx-v#{version}/kubectx_v#{version}_darwin.tar.gz"
  sha256 "b1ef9adcca620181b784dbd84fd154ad29d7ae11231babc77fb80f1e8da77206"

  def install
    bin.install "kubectx"
    bin.install "kubens"
  end

  # Homebrew requires tests.
  test do
    system "false"
  end
end
