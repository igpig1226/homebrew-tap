# 这个文件由 GitHub Actions 自动更新，不要手动修改
cask "bxb-student" do
  version "1.3.0"
  sha256 :no_check  # 首次占位，Actions 构建后自动填入真实 SHA256

  url "https://github.com/GRAY-XY/BXB_tools/releases/download/v#{version}/BXB_Student_macOS_v#{version}.dmg"
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
