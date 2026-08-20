# frozen_string_literal: true

cask "podsync" do
  version "0.1.0-alpha.2"
  sha256 "baee648054d97c4a9340cbb26079fe2bb047b5a7ea1e9b9028dad6ae4aa03329"

  url "https://github.com/thinkingsapiens/podsync/releases/download/v#{version}/PodSync_#{version}_aarch64.dmg"
  name "PodSync"
  desc "Lean, native podcast client for Apple Silicon"
  homepage "https://thinkingsapiens.github.io/podsync/"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "PodSync.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/PodSync.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.podsync.desktop",
    "~/Library/Caches/com.podsync.desktop",
    "~/Library/Preferences/com.podsync.desktop.plist",
  ]
end
