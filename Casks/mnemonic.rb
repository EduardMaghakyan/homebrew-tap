cask "mnemonic" do
  version "0.1.4"
  sha256 "8909a5b501aae87b1779203409dd33a972f8ab873e9cb27b6185b64d22c26d48"

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
