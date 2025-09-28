cask "agent-sessions" do
  version "1.1"
  sha256 "cdbc4b5eeac8b443bc34ded656040d79bab808d10a1dc83177dee13a9c88f858"

  url "https://github.com/jazzyalex/agent-sessions/releases/download/v#{version}/AgentSessions-#{version}.dmg",
      verified: "github.com/jazzyalex/agent-sessions/"
  name "Agent Sessions"
  desc "macOS utility to browse and search Codex CLI session logs"
  homepage "https://jazzyalex.github.io/agent-sessions/"

  app "AgentSessions.app"

  zap trash: [
    "~/Library/Preferences/com.triada.AgentSessions.plist",
    "~/Library/Application Support/AgentSessions",
  ]
end
