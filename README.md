# CRYENGINE Reference Source Code
This repository houses the reference CRYENGINE source code for [Chairloader](https://github.com/thelivingdiamond/chairloader) development.  
This code is based on CRYENGINE 5.2.0 with additional patches to make it compile with 5.1.0 SDK.  
It may not function correctly and only provided as a reference.

## Getting Started
Prerequisites:
- [Visual Studio](https://visualstudio.microsoft.com/) 2019 or newer (Community is fine)
  - Desktop development with C++
  - C++ ATL for latest build tools (x64)
  - C++ MFC for latest build tools (x64)
- [CMake](https://cmake.org/download/)

1. Clone the repository
   ```bash
   git clone https://github.com/tmp64/CRYENGINE_Chairloader.git -b chairloader --depth=1
   ```
2. Download the SDKs from the [Releases page](https://github.com/tmp64/CRYENGINE_Chairloader/releases/tag/5.2.0)
3. Extract SDKs into `Code/SDKs`
   ```
   - Code
     - SDKs
       - Audio
       - BigDigits
       - boost
       - ...
   ```
4. Create `Solution_Win64` directory in the repo root.
5. Open CMake GUI.
6. Configure and generate the solution.
7. Open in Visual Studio.

## Branches
- `chairloader` - this branch, based on `5.2.0` tag.
- `release` branch provides stable snapshots of the engine.
- `stabilisation` branch is used for fixing bugs in the run-up to release.
- `release_candidate`branch may be created for a few days before a release, if we need some critical fixes before release.

## License
The source code in this repository is governed by the CRYENGINE license agreement, which is contained in LICENSE.md, adjacent to this file.
