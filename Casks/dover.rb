# Casks/dover.rb
cask "dover" do
  version "0.18.4"

  if Hardware::CPU.arm?
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-arm64.zip"
    sha256 "e308ad16150ba4900e3578e3bc6960d63cfd176a77ee6d069e9d7e2c2a6c00f5"
  else
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-amd64.zip"
    sha256 "cd34222ffb7d640d959dd8d7898007e72aefd1572a996f3cd80cc087d156109b"
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
