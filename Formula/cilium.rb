class Kubectx < Formula
  version "v0.9.3"
  desc "Support commandline programs for cilium and hubble"
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/cilium-hubble-#{version}/cilium-hubble-darwin.tar.gz"
  sha256 "f3bd0af4caa8a8920e5d57cc86a402a95e1ef5736c47e2541b0fb0aae7eaddd0"

  def install
    bin.install "cilium"
    bin.install "hubble"
  end

  # Homebrew requires tests.
  test do
    system "false"
  end
end
