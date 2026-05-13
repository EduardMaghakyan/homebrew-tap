cask "mnemonic" do
  version "0.3.0"
  sha256 "b02d86d7766b8e938017df941d0cb2e2020d320bcacb1dfa66275e130ce6df27"

  url "https://github.com/EduardMaghakyan/mnemonic/releases/download/v#{version}/Mnemonic_#{version}_aarch64.dmg"
  name "Mnemonic"
  desc "Menu-bar voice notes — record, transcribe locally via Gemma 4 E4B"
  homepage "https://github.com/EduardMaghakyan/mnemonic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mnemonic.app"
  binary "#{appdir}/Mnemonic.app/Contents/MacOS/mnemonic"

  zap trash: [
    "~/.config/mnemonic",
    "~/.mnemonic",
    "~/Library/Application Scripts/ai.mnemonic.recorder",
    "~/Library/Containers/ai.mnemonic.recorder",
    "~/Library/Logs/Mnemonic",
    "~/Library/Preferences/ai.mnemonic.recorder.plist",
    "~/Library/WebKit/ai.mnemonic.recorder",
  ]
end
