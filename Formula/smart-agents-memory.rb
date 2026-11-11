class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.2.0/smart-agents-memory-darwin-arm64"
      sha256 "fefacf95163672ab76e9d36ab29882a0d84d0838e81000dea7e031d809aa4730"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.2.0/smart-agents-memory-darwin-amd64"
      sha256 "dbc1f0fb1b2d407972bb1b8b26368d381af8917bc1b8c53179d4ae0ab9a79168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.2.0/smart-agents-memory-linux-arm64"
      sha256 "202cd51d0b7031c65418f7a88960ee4604c5e935e5cabf22b38d5bd3b3bbe42c"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.2.0/smart-agents-memory-linux-amd64"
      sha256 "3d8c5c7831fa2c3f1841946965c9df95a78773e603b5f191de12c19f442bdb52"
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
