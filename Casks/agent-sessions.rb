cask "agent-sessions" do
  version "6.1.2"
  sha256 "0cc13572e9b82e4d3281a7795020b3c495ad6bb5818773f590564371e2c8c3b5"

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
