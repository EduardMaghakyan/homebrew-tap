cask "mnemonic" do
  version "0.2.1"
  sha256 "2dbad5fb3d4a3c82a3379eb681816882b4e7706ff0cc295f93c26ecaa31a92f1"

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
