cask "agent-sessions" do
  version "3.9"
  sha256 "e5b8e68eee76a97cccf32b2e63296f64ff625f53002d603ea6c8ac4d585bbf43"

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
