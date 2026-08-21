# frozen_string_literal: true

cask "podsync-app" do
  version "0.1.0-alpha.3"
  sha256 "6267d13d48df7ec2686363bc9830d9fecdfe338e6993a033bf3690ef6efd0cee"

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
