cask "nativity" do
  version "1.1.1"
  sha256 "19d1ce9722310318f2a0dffd9bc367ca9b7f4abe09f13343349072134b830841"

  url "https://github.com/asitkhanda/nativity-macos-releases/releases/download/v#{version}/Nativity-#{version}.dmg"
  name "Nativity"
  desc "Voice typing in English and 22 Indian languages, on your Mac"
  homepage "https://speaknativity.com/"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Nativity.app"

  caveats <<~EOS
    Nativity is Developer ID signed and notarized. It should open normally from Applications or Homebrew.
  EOS

  zap trash: [
    "~/Library/Containers/space.asit.nativity",
  ]
end
