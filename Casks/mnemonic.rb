cask "mnemonic" do
  version "0.1.2"
  sha256 "d7a71382bcc5aae9d8b12b8cd1a80943f924eeaf6fd3e2177c09466578b29e65"

  url "https://github.com/EduardMaghakyan/mnemonic/releases/download/v#{version}/Mnemonic-#{version}.zip"
  name "Mnemonic"
  desc "Local-first developer memory — captures meetings, understands your codebase"
  homepage "https://github.com/EduardMaghakyan/mnemonic"

  depends_on macos: ">= :sonoma"

  app "Mnemonic.app"

  zap trash: [
    "~/.mnemonic",
  ]
end
