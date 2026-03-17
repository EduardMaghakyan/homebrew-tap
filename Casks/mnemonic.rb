cask "mnemonic" do
  version "0.1.3"
  sha256 "effde8398dcfa4d4d47b493f97025ecd9b36e40e496e267b5e05ef3dd97f3cf5"

  url "https://github.com/EduardMaghakyan/mnemonic/releases/download/v#{version}/Mnemonic-#{version}.zip"
  name "Mnemonic"
  desc "Local-first developer memory — captures meetings, understands your codebase"
  homepage "https://github.com/EduardMaghakyan/mnemonic"

  depends_on macos: ">= :sonoma"

  app "Mnemonic.app"

  postflight do
    system_command "/usr/bin/tccutil", args: ["reset", "Accessibility", "com.mnemonic.app"]
  end

  zap trash: [
    "~/.mnemonic",
  ]
end
