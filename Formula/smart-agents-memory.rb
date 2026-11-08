class SmartAgentsMemory < Formula
  desc "Shared memory for AI agents: one corpus, many harnesses."
  homepage "https://github.com/lindoelio/smart-agents-memory"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-darwin-arm64"
      sha256 "fcf0a6506b8602f5dc0734da22c0950cafba939d13430e5a0ac75e2af40314b8"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-darwin-amd64"
      sha256 "0e66b224e77f32ac5937eb8f059d2e0f55f167acee6d389c18c719286c363386"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-linux-arm64"
      sha256 "1932ffdc215571bf0fbdc53103cbb933177b2aef885a3e5e4b9ae87a4f59cdc5"
    end

    on_intel do
      url "https://github.com/lindoelio/smart-agents-memory/releases/download/v0.1.0/smart-agents-memory-linux-amd64"
      sha256 "381d73fd22afd0c9fdd62af09c22e89fc6664350edb193c6f3efb016f217d80f"
    end
  end

  def install
    bin.install Dir["smart-agents-memory-*"].first => "smart-agents-memory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/smart-agents-memory --version")
  end
end
