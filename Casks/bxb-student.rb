cask "bxb-student" do
  version "1.0.2"
  sha256 "0841ae19f7a69c26736c054cbba2273288a90b8a832766e0ff9bcbd2575c3077"

  url "https://github.com/GRAY-XY/BXB_tools/releases/download/v1.3.0/BXB_Student_macOS_v1.0.2.dmg"
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

