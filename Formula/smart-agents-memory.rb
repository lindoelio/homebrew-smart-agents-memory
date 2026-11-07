class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_windows do
    url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-windows-amd64.exe"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install Dir["smart-agents-memory-*"].first => "smart-agents-memory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/smart-agents-memory --version")
  end
end
