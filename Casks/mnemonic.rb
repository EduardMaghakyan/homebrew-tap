cask "mnemonic" do
  version "0.1.5"
  sha256 "654eba7f87136bfec00be8d2ab02350981b1be89323e6bad0bd8b7c06745dac4"

  url "https://github.com/EduardMaghakyan/mnemonic/releases/download/v#{version}/Mnemonic-#{version}.zip"
  name "Mnemonic"
  desc "Local-first developer memory — captures meetings, understands your codebase"
  homepage "https://github.com/EduardMaghakyan/mnemonic"

  depends_on macos: ">= :sonoma"

  app "Mnemonic.app"
  binary "#{appdir}/Mnemonic.app/Contents/MacOS/Mnemonic", target: "mnemonic"

  postflight do
    system_command "/usr/bin/tccutil", args: ["reset", "Accessibility", "com.mnemonic.app"]
  end

  zap trash: [
    "~/.mnemonic",
  ]
end
