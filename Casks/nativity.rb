cask "nativity" do
  version "1.1.0"
  sha256 "7b354a6c772b2bb488c60c6e0f20793b80960c9fd065f8c80cdb4df8e85ab69d"

  url "https://github.com/asitkhanda/nativity-macos-releases/releases/download/v#{version}/Nativity-#{version}.dmg"
  name "Nativity"
  desc "Voice typing in English and 22 Indian languages, on your Mac"
  homepage "https://speaknativity.com/"

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
