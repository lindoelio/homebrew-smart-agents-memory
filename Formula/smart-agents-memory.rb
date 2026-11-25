class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.0/smart-agents-memory-darwin-arm64"
      sha256 "02f7d47f060e508366dad3c7847a00c118416ae4196e75cb056de5bdc628b977"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.0/smart-agents-memory-darwin-amd64"
      sha256 "2183d1f29ef3a102ab9a066566ade9c1a241a376dc5fae5d8e91650f13fcb3b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.0/smart-agents-memory-linux-arm64"
      sha256 "cfcfda54c15058ae1caaf21700aeea86460c669f332b0a0e7829b2773b78fd34"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.0/smart-agents-memory-linux-amd64"
      sha256 "0e41117bc489a4e683036e960f717d528a5ff89b626763515c8c00bacbc14ae6"
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
