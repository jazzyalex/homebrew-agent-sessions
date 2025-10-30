cask "agent-sessions" do
  version "2.5"
  sha256 "fb2f4f8059209c713d224d35fbe988b267128588f9a142259dfcc0e6cdbd9ff6"

  url "https://github.com/jazzyalex/agent-sessions/releases/download/v#{version}/AgentSessions-#{version}.dmg",
      verified: "github.com/jazzyalex/agent-sessions/"
  name "Agent Sessions"
  desc "Unified session browser for Codex CLI, Claude Code, and Gemini CLI (read-only)"
  homepage "https://jazzyalex.github.io/agent-sessions/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "AgentSessions.app", target: "AgentSessions.app"

  zap trash: [
    "~/Library/Preferences/com.triada.AgentSessions.plist",
    "~/Library/Application Support/com.triada.AgentSessions",
  ]
end
