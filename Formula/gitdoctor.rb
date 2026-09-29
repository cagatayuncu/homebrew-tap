class Gitdoctor < Formula
  desc "Read-only Git Flow doctor: 52 repo health checks with fix recipes"
  homepage "https://github.com/cagatayuncu/gitdoctor"
  url "https://github.com/cagatayuncu/gitdoctor/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "7808ecde2bed5267e2003888805296c9d3d8fc8880b282c1bccef018e917ec97"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "scripts/gitflow-doctor.sh" => "gitdoctor"
  end

  test do
    assert_match "usage", shell_output("#{bin}/gitdoctor --help")
  end
end
