class Kops < Formula
  version "1.18.2"
  desc "The Kops command-line tool, kops, allows you to set up Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kops-#{version}/kops-darwin-amd64.tar.gz"
  sha256 "105bfa7c1dde56d8b3a6a836e64ff632ae03a0785515f9842589b1aa7801486a"

  def install
    bin.install "kops"
  end

  # Homebrew requires tests.
  test do
    assert_match "#{version}", shell_output("#{bin}/kops version", 0)
  end
end
