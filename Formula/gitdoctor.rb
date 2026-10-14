class Gitdoctor < Formula
  desc "Read-only Git Flow doctor: 52 repo health checks with fix recipes"
  homepage "https://github.com/cagatayuncu/gitdoctor"
  url "https://github.com/cagatayuncu/gitdoctor/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "26c316ec5aeab1706ab0e5ae7f34e50a6a8031b8ce18f122f5c233c68fe18f65"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "scripts/gitflow-doctor.sh" => "gitdoctor"
    bin.install "integrations/github-actions/back-merge-pr.sh" => "gitdoctor-back-merge-pr"
  end

  test do
    assert_match "usage", shell_output("#{bin}/gitdoctor --help")
    assert_match "gitflow-doctor #{version}", shell_output("#{bin}/gitdoctor-back-merge-pr --version")
  end
end
