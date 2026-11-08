class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-darwin-arm64"
      sha256 "fd04e435449fe26daec23cae572898483c326f0cd9d07afc4797a56d10e18c7f"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-darwin-amd64"
      sha256 "d5c530e39a3bcabef672c8ac81487b118e602e08ef8c0421ee70b52d96a6e238"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-linux-arm64"
      sha256 "e6c1995da76bfd296b07751256abbcfdf77278a4d5924c9ac43cb4eebc2a829e"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-linux-amd64"
      sha256 "77a1280ebaa6bff19503d23c9958fc35e30e9c683523426467e82f817afd30c9"
    end
  end

  # Homebrew does not run on Windows, and its formula language has no
  # block for it. The Windows binary is published in the release, for the
  # people who download it directly.

  def install
    bin.install Dir["smart-agents-memory-*"].first => "smart-agents-memory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/smart-agents-memory --version")
  end
end
