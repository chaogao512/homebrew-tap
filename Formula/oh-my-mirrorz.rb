class OhMyMirrorz < Formula
  desc "Safe, reviewable, and reversible mirror switcher"
  homepage "https://github.com/chaogao512/oh-my-mirrorz"
  url "https://github.com/chaogao512/oh-my-mirrorz/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "296a17ae8f541df5616d6b7e9445ab1ff4a3fdc1ddd5d2f57c9f254394846dca"
  license "MIT"
  head "https://github.com/chaogao512/oh-my-mirrorz.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-X github.com/chaogao512/oh-my-mirrorz/internal/version.Version=v#{version}"

    system "go", "build", *std_go_args(ldflags:, output: bin/"omm"), "./cmd/omm"
  end

  test do
    assert_match "oh-my-mirrorz v#{version}", shell_output("#{bin}/omm version")
    assert_match "pypi", shell_output("#{bin}/omm mirrors")
    assert_match "conda", shell_output("#{bin}/omm mirrors")
  end
end
