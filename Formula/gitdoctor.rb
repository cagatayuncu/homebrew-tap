class Gitdoctor < Formula
  desc "Read-only Git Flow doctor: 42 repo health checks with fix recipes"
  homepage "https://github.com/cagatayuncu/gitdoctor"
  url "https://github.com/cagatayuncu/gitdoctor/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "cfd2609a336ef1d7b30c867fcbc6153106ec1ce859cf2c8a427c74b9af42c7d8"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "scripts/gitflow-doctor.sh" => "gitdoctor"
  end

  test do
    assert_match "usage", shell_output("#{bin}/gitdoctor --help")
  end
end
