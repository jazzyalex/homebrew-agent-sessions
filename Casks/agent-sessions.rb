cask "agent-sessions" do
  version "6.1.1"
  sha256 "1153c677ff140325e2af2536f696d594e7346b6dc8fdd9dd3d9ef573652308ba"

  url "https://github.com/jazzyalex/agent-sessions/releases/download/v#{version}/AgentSessions-#{version}.dmg"
  name "Agent Sessions"
  desc "Unified session browser for Codex CLI, Claude Code, Gemini CLI, and OpenCode (read-only)"
  homepage "https://jazzyalex.github.io/agent-sessions/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AgentSessions.app", target: "AgentSessions.app"

  zap trash: [
    "~/Library/Application Support/Agent Sessions",
    "~/Library/Preferences/com.triada.AgentSessions.plist",
    "~/Library/Saved Application State/com.triada.AgentSessions.savedState",
  ]
end
