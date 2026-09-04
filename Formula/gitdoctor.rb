class Gitdoctor < Formula
  desc "Read-only Git Flow doctor: 47 repo health checks with fix recipes"
  homepage "https://github.com/cagatayuncu/gitdoctor"
  url "https://github.com/cagatayuncu/gitdoctor/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b5a39fefc5ceb7c318e456cba0685c4fbf8b54d67bfea8bef56dc626b0c2658e"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "scripts/gitflow-doctor.sh" => "gitdoctor"
  end

  test do
    assert_match "usage", shell_output("#{bin}/gitdoctor --help")
  end
end
