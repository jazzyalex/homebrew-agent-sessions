cask "agent-sessions" do
  version "1.0"
  sha256 "c36036043031940a4c87b3bb903b8d245bee80bac2486bc85419223db0cc0933"

  url "https://github.com/jazzyalex/agent-sessions/releases/download/v#{version}/AgentSessions.dmg",
      verified: "github.com/jazzyalex/agent-sessions/"
  name "Agent Sessions"
  desc "macOS utility to browse and search Codex CLI session logs"
  homepage "https://jazzyalex.github.io/agent-sessions/"

  app "AgentSessions.app"

  zap trash: [
    "~/Library/Preferences/com.yourdomain.AgentSessions.plist",
    "~/Library/Application Support/AgentSessions",
  ]
end
