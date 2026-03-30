cask "agent-sessions" do
  version "3.4"
  sha256 "caad8fedce6d8a87df4f719cf9035f439e8ac271fe1b8579d3d8dab827ea8027"

  url "https://github.com/jazzyalex/agent-sessions/releases/download/v#{version}/AgentSessions-#{version}.dmg",
      verified: "github.com/jazzyalex/agent-sessions/"
  name "Agent Sessions"
  desc "Unified session browser for Codex CLI, Claude Code, Gemini CLI, and OpenCode (read-only)"
  homepage "https://jazzyalex.github.io/agent-sessions/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "AgentSessions.app", target: "AgentSessions.app"

  zap trash: [
    "~/Library/Application Support/Agent Sessions",
    "~/Library/Preferences/com.triada.AgentSessions.plist",
    "~/Library/Saved Application State/com.triada.AgentSessions.savedState",
  ]
end
