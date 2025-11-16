cask "agent-sessions" do
  version "2.6"
  sha256 "bcdaae9edc3c25a3f1e3bff89f68cdd2bf52db848341499fb8027aa5c68afed9"

  url "https://github.com/jazzyalex/agent-sessions/releases/download/v#{version}/AgentSessions-#{version}.dmg"
  name "Agent Sessions"
  desc "Session browser for Codex CLI, Claude Code and Gemini CLI"
  homepage "https://jazzyalex.github.io/agent-sessions/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Agent Sessions.app"

  zap trash: [
    "~/Library/Preferences/com.triada.AgentSessions.plist",
    "~/Library/Caches/com.triada.AgentSessions",
  ]
end
