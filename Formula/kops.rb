class Kops < Formula
  version "1.22.6-1"
  desc "The Kops command-line tool, kops, allows you to set up Kubernetes clusters."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kops-#{version}/kops-darwin-amd64.tar.gz"
  sha256 "b210c37ebcc1464ee15059677426a758ffb3f1bc0af2b8ecb5342133d0ef6b7c"

  def install
    bin.install "kops"
  end

  # Homebrew requires tests.
  test do
    assert_match "git-3a6f2117f322bfc37da814bde1feb12dabc943f2", shell_output("#{bin}/kops version", 0)
  end
end
