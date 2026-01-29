# GitHub Actions Build Workflows

This repository contains GitHub Actions workflows to build the Telegram Bot API server across multiple platforms and architectures.

## Build Workflows

### Build Telegram Bot API

The main workflow builds the Telegram Bot API server for multiple platforms and architectures:

**Supported Platforms:**
- **Linux**: x86_64, ARM64 (cross-compiled)
- **macOS**: x86_64 (Intel), ARM64 (Apple Silicon)
- **Windows**: x86_64

**Manual Trigger:**

1. Go to the **Actions** tab in your GitHub repository
2. Select **Build Telegram Bot API** workflow
3. Click **Run workflow**
4. Configure build options:
   - **Enable Link Time Optimization**: `true` or `false` (default: `false`)
   - **Build Type**: `Release` (default), `Debug`, `RelWithDebInfo`, or `MinSizeRel`
5. Click **Run workflow** button

**Downloading Artifacts:**

After the workflow completes:

1. Go to the **Actions** tab
2. Click on the completed workflow run
3. Scroll down to the **Artifacts** section
4. Download the desired platform/architecture build

Artifact naming convention:
- Linux/macOS: `telegram-bot-api-{os}-{arch}.tar.gz`
- Windows: `telegram-bot-api-{os}-{arch}.zip`

Available artifacts:
- `telegram-bot-api-linux-x86_64` - Linux Intel/AMD 64-bit
- `telegram-bot-api-linux-arm64` - Linux ARM 64-bit
- `telegram-bot-api-macos-x86_64` - macOS Intel 64-bit
- `telegram-bot-api-macos-arm64` - macOS Apple Silicon
- `telegram-bot-api-windows-x86_64` - Windows 64-bit

## Build Details

### Dependencies

**Linux:**
- GCC/G++ (or Clang)
- CMake 3.10+
- OpenSSL
- zlib
- gperf

**macOS:**
- Clang
- CMake 3.10+
- OpenSSL (via Homebrew)
- gperf (via Homebrew)

**Windows:**
- MSVC (Visual Studio)
- CMake 3.10+

### Cross-Compilation

The workflow includes cross-compilation for Linux ARM64 using a toolchain file located at `.github/toolchain-aarch64-linux-gnu.cmake`. This requires the `gcc-aarch64-linux-gnu` and `g++-aarch64-linux-gnu` packages.

### Build Configuration

The workflow uses CMake with the following default options:
- Build type: Release
- LTO (Link Time Optimization): Disabled (can be enabled via workflow input)

## Usage After Download

### Linux/macOS:

```bash
# Extract the archive
tar -xzf telegram-bot-api-{os}-{arch}.tar.gz

# Make executable (if needed)
chmod +x telegram-bot-api

# Run
./telegram-bot-api --api-id YOUR_API_ID --api-hash YOUR_API_HASH
```

### Windows:

```powershell
# Extract the zip file
Expand-Archive telegram-bot-api-windows-x86_64.zip -DestinationPath .

# Run
.\telegram-bot-api.exe --api-id YOUR_API_ID --api-hash YOUR_API_HASH
```

For more information on usage, see the main [README.md](../README.md).
