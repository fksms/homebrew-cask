cask "dirwalker" do
  version "0.2.2"

  on_arm do
    sha256 "b113289bb09908cc671768a40c23797821b7dd0d57a00fea865f6a625ac8777e"

    url "https://github.com/fksms/DirWalker/releases/download/v#{version}/DirWalker_#{version}_aarch64.dmg",
        verified: "https://github.com/fksms/DirWalker/"
  end
  on_intel do
    sha256 "b220409d2d5b75d0bb694f085a4e331a1da7bad463768302fcf7594ff0a689c8"

    url "https://github.com/fksms/DirWalker/releases/download/v#{version}/DirWalker_#{version}_x64.dmg",
        verified: "https://github.com/fksms/DirWalker/"
  end

  name "DirWalker"
  desc "Tools to visualize storage usage with a sunburst chart"
  homepage "https://dirwalker.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "DirWalker.app"
end