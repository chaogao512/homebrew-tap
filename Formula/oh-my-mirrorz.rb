class OhMyMirrorz < Formula
  desc "Safe, reviewable, and reversible mirror switcher"
  homepage "https://github.com/chaogao512/oh-my-mirrorz"
  url "https://github.com/chaogao512/oh-my-mirrorz/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "009b8c76ad6f5061a67a28628fb0d72d0aa99b9897b57e713a7361bc0a7a6fcb"
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
  end
end
