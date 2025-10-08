cask "agent-sessions" do
  version "2.1"
  sha256 "b962994e402e7cdfe575e28c37989ff96a2aab10172635a246cf7c59b97cda26"

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
