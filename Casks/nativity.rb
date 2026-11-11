cask "nativity" do
  version "1.0.0"
  sha256 "6e260e0da5e8adc5dd80453fe930e5be97103f42649b0269fa8dda2589546390"

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
