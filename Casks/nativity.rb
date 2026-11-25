cask "nativity" do
  version "1.1.2"
  sha256 "3508e9ddeb4eaee7b47ddfc277da50b0a8cefb97b686d13a2c35cb20fe3cc975"

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
