cask "mnemonic" do
  version "0.1.1"
  sha256 "5c525a91e39b37f60556c600c7a99207aa47bd799a67c8f5cae1c65abadd9602"

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
