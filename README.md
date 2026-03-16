# ffmpeg_drag_it
use ffmpeg convert your video


------------------------------------------------------------------------------------------------------------------------------------------------
# ffmpeg_drag_it.exe
 - 直接将单个 / 多个视频文件拖拽到 ffmpeg_drag_it.exe 图标上 | Directly drag single/multiple video files onto the ffmpeg_drag_it.exe icon
 - 工具自动启动转码流程，无需额外操作 | The tool automatically starts the transcoding process without additional operations
 - 自动还原文件原始创建 / 修改时间戳 | The original creation/modification timestamps are automatically restored
## 功能特点
## Features
- 🖥️ 纯CPU处理（无需GPU加速）
  Pure CPU processing (no GPU acceleration required)
- 🎨 支持H.264(libx264)和H.265(libx265)编码格式
  Support H.264 (libx264) and H.265 (libx265) encoding formats
- 🔧 自定义输出文件后缀（mkv、mp4等常见格式）
  Customizable output file extensions (mkv, mp4 and other common formats)
- ⚡ 可配置并行转码任务数量（根据CPU性能调整）
  Configurable number of parallel transcoding tasks (adjust based on CPU performance)
- ⏱️ 转码完成后自动还原文件原始创建/修改时间戳
  Automatically restore the original creation/modification timestamps of files after transcoding
- ⚙️ 通过INI配置文件灵活设置核心参数
  Flexible configuration of core parameters via INI file

## 前置要求
## Prerequisites
1. Windows操作系统
   Windows operating system
2. FFmpeg可执行文件（需手动重命名）
   FFmpeg executable file (needs manual renaming)
3. 使用前必须关闭所有`conhost.exe`进程
   All `conhost.exe` processes must be closed before use
4. 足够的CPU资源（推荐多核CPU，避免性能不足导致卡顿）
   Sufficient CPU resources (multi-core CPU recommended to avoid lag due to insufficient performance)

## 前期准备
## Preparations
### 1. FFmpeg文件重命名
### 1. FFmpeg File Renaming
- 找到本地的`ffmpeg.exe`文件
  Locate the local `ffmpeg.exe` file
- **必须将其重命名为`ffmpeg_new_e.exe`**（工具仅识别该文件名）
  **Must rename it to `ffmpeg_new_e.exe`** (the tool only recognizes this file name)
- 将重命名后的文件放置到固定目录（示例：`C:\Users\Administrator\Desktop\f\ffmpeg_new_e.exe`）
  Place the renamed file in a fixed directory (example: `C:\Users\Administrator\Desktop\f\ffmpeg_new_e.exe`)

### 2. 关闭conhost.exe进程
### 2. Close conhost.exe Processes
- 以管理员身份运行命令提示符（CMD）
  Run Command Prompt (CMD) as administrator
- 执行以下命令强制关闭所有`conhost.exe`进程：
  Execute the following command to force close all `conhost.exe` processes:
  ```bash
  taskkill /f /im conhost.exe
  ```
------------------------------------------------------------------------------------------------------------------------------------------------

# sort_your_ffmpeg_window.exe
  
 - sort_your_ffmpeg_window.exe 可排序 FFmpeg 转码窗口
 - sort_your_ffmpeg_window.exe can sort FFmpeg transcoding windows
------------------------------------------------------------------------------------------------------------------------------------------------
