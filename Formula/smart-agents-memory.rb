class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.1/smart-agents-memory-darwin-arm64"
      sha256 "e8df494850ef19cd448fd19fd4cb96d8e468e2574916fb4c0190f6d68f41634a"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.1/smart-agents-memory-darwin-amd64"
      sha256 "ef672b0cf7c1b2681eabeed8eae6a9b842470b0f4543cad7bb7cc728fa7d716e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.1/smart-agents-memory-linux-arm64"
      sha256 "ff705116f72cf391f8fe7a8081ea6d9a0e70923ed12624b39961652cecafcb85"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.1/smart-agents-memory-linux-amd64"
      sha256 "cfaa9aa95c9f61cd35bb39dd16a97c2090ab3f98b7c09cbaeaa046829d3e2bda"
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
