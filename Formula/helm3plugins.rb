class Helm3plugins < Formula
  version "3.5.3"
  desc "Helm plugins."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/helm3-v#{version}/helm-darwin-amd64.tar.gz"
  sha256 "451ad70dfe286e3979c78ecf7074f4749d93644da8aa2cc778e2f969771f1794"

  def install
    system "/usr/local/bin/helm3 plugin install https://github.com/databus23/helm-diff --version v3.1.3"
    system "/usr/local/bin/helm3 plugin install https://github.com/jkroepke/helm-secrets --version v3.5.0"
    system "/usr/local/bin/helm3 plugin install https://github.com/aslafy-z/helm-git --version v0.10.0"
  end

  # Homebrew requires tests.
  test do
    assert_match "v#{version}", shell_output("#{bin}/helm3 version --short", 0)
  end
end