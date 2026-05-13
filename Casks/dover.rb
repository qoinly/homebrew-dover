# Casks/dover.rb
cask "dover" do
  version "0.18.10"

  if Hardware::CPU.arm?
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-arm64.zip"
    sha256 "7332251f20e19feaa9798cd501d91771a8c3a2bf49c24c6b3480e44533b76f40"
  else
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-amd64.zip"
    sha256 "8487040b9879f23cd4dbede5eec99176a22a196e0c3c8eee3c0570b4db2da6bb"
  end

  name "Dover"
  desc "Local-first API client alternative. Plugins included."
  homepage "https://www.usedover.app"

  app "Dover.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/Dover.app"],
      sudo: false
  end
end
