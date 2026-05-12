# Casks/dover.rb
cask "dover" do
  version "0.18.3"

  if Hardware::CPU.arm?
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-arm64.zip"
    sha256 "475249b56d4fd9102aabb0998b0c893e8b578f065815d8ff808a6c805818d92b"
  else
    url "https://github.com/qoinly/homebrew-dover/releases/download/v#{version}/Dover-#{version}-darwin-amd64.zip"
    sha256 "43d900221c2f93794fa22dc94eeb073201a82abdf32348ab43df3fa4d31b3d2c"
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
