cask "bxb-student" do
  version "1.0.2"
  sha256 "c71d68c1f48874bb855cc3d41e7ca3d627025122c7a8e0ada98925410720d64b"

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

