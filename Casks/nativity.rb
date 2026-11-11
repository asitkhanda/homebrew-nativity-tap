cask "nativity" do
  version "1.0.1"
  sha256 "dbea34897c85bdff18273b344101c51d953070c61ca5cb539a2c7f6397086f8e"

  url "https://github.com/asitkhanda/nativity-macos-releases/releases/download/v#{version}/Nativity-#{version}.dmg"
  name "Nativity"
  desc "Speech to text for Indian languages, on your Mac"
  homepage "https://nativity.asit.space/"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Nativity.app"

  caveats <<~EOS
    Nativity is Developer ID signed and notarized. It should open normally from Applications or Homebrew.
  EOS

  zap trash: [
    "~/Library/Containers/space.asit.nativity",
  ]
end
