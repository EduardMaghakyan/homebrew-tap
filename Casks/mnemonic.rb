cask "mnemonic" do
  version "0.1.0"
  sha256 "9019ea40f031d78974c19d461b03f9f362c09c9d6f49c0b317cacd85ae25a174"

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
