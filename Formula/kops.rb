class Kops < Formula
  version "1.18.2-bravo"
  desc "The Kops command-line tool, kops, allows you to set up Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kops-#{version}/kops-darwin-amd64.tar.gz"
  sha256 "3b3ae9ed6053756f745b70115f1612d74556e9f8c13979a44573eee330c1e2df"

  def install
    bin.install "kops"
  end

  # Homebrew requires tests.
  test do
    assert_match "git-32856aa2f8-Bravo", shell_output("#{bin}/kops version", 0)
  end
end
