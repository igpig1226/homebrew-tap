cask "bxb-student" do
  version "1.3.0"
  sha256 "a066d868c6cfd7c4fc84c6a532f77fd53a73e8d8e523ed50347111dcf3c780c9"

  url "https://github.com/GRAY-XY/BXB_tools/releases/download/v1.3.1-beta/BXB_Student_macOS_v1.3.0.dmg"
  name "BXB Student"
  desc "班学帮学生桌面工具"
  homepage "https://github.com/GRAY-XY/BXB_tools"

  app "BXB Student.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/BXB Student.app"]
  end

  uninstall quit: "com.grayxy.bxbstudent",
            delete: "#{appdir}/BXB Student.app"

  zap trash: [
    "~/Library/Application Support/BXB Student",
    "~/Library/Logs/BXB Student",
  ]
end

