class Kops < Formula
  version "1.18.2-bravo-2"
  desc "The Kops command-line tool, kops, allows you to set up Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kops-#{version}/kops-darwin-amd64.tar.gz"
  sha256 "bbf5b5ddcf5f7224537f4120aa76dce8b87735ea04c22298f1132a94ef03ea35"

  def install
    bin.install "kops"
    bin.install "spok"
  end

  # Homebrew requires tests.
  test do
    assert_match "git-32856aa2f8-Bravo", shell_output("#{bin}/kops version", 0)
    assert_match "git-3a6f2117f322bfc37da814bde1feb12dabc943f2", shell_output("#{bin}/spok version", 0)
  end
end
