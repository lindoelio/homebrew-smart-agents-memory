class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.1/smart-agents-memory-darwin-arm64"
      sha256 "73c4c38beb0e37710d6ba285e6e6cbfb7c62b13a59980fc931c696d28378d78f"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.1/smart-agents-memory-darwin-amd64"
      sha256 "61a44cc4436d2d5598df37d538531536fc1abdc738bb556021661bbdf60f0b18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.1/smart-agents-memory-linux-arm64"
      sha256 "1189a596734ac0fb3ef56f9b49eb08f2dc4990b63df275ec7e33c1b6a32395ca"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.4.1/smart-agents-memory-linux-amd64"
      sha256 "6d9aebf2a9c7203777600094915a0af875d6aa40f1e5ae0bbce746b9ae3c4280"
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
