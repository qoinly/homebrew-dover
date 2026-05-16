# Casks/dover.rb
cask "dover" do
  version "0.19.0"

  if Hardware::CPU.arm?
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-arm64.zip"
    sha256 "bcbb075dba71876a42ca2f9412f19b75bdcbbd9ac728a57444f2bbdd5ff34e7f"
  else
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-amd64.zip"
    sha256 "490ff89b0188d72f933e87f7e8b8a043725969cc3feb4c5db405a4a00ae877c4"
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
