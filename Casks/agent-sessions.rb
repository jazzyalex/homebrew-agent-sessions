cask "agent-sessions" do
  version "2.2.1"
  sha256 "6214b6cbbf5830fdc9df0c89c9f0fc010f6a099f2f2bfa6717cc9d53fc1380f8"

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
