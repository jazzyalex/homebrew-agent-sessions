cask "agent-sessions" do
  version "6.2"
  sha256 "84ed6dd238c1f085bc7ecdbb51f0a1be8c22301bdb149221bc7181c1ce4f50c5"

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
