cask "agent-sessions" do
  version "1.2"
  sha256 "45edd0fe2c7b4cdfa5a010170f013a22fa26b14ca07dd2cb3f8b97d3003f76e0"

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
