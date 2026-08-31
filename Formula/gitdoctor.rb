class Gitdoctor < Formula
  desc "Read-only Git Flow doctor: 42 repo health checks with fix recipes"
  homepage "https://github.com/cagatayuncu/gitdoctor"
  url "https://github.com/cagatayuncu/gitdoctor/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5ecea030a197e44fa05bff570d4dc2ddfb6702a9148e4543dfe6c838ea130f74"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "scripts/gitflow-doctor.sh" => "gitdoctor"
  end

  test do
    assert_match "usage", shell_output("#{bin}/gitdoctor --help")
  end
end
