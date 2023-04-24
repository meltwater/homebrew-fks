class Kustomize < Formula
  version "v5.0.1"
  desc "Customize raw, template-free YAML files."
  homepage "https://github.com/meltwater/homebrew-fks"
  url "https://github.com/meltwater/homebrew-fks/releases/download/kustomize-#{version}/kustomize-darwin-amd64.tar.gz"
  sha256 "4a2b9f7fad0355c8bea08da6dd9c48e790df5f357983280998d80b8dc7ad3def"

  def install
    bin.install "kustomize"
  end

  # Homebrew requires tests.
  test do
    assert_match "#{version}", shell_output("#{bin}/kustomize version", 0)
  end
end
