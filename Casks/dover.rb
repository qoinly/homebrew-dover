# Casks/dover.rb
cask "dover" do
  version "0.18.3"

  if Hardware::CPU.arm?
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-arm64.zip"
    sha256 "f40cb4b61dbe94807794d555a19e0fc1dfc13b0ab5ba91e9dd41b631adf09904"
  else
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-amd64.zip"
    sha256 "4dd6a07aeaeb109766f646e64fe67e9007d0803fa95039bd23af403a3457db97"
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
