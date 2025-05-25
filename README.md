# ACorp's/Corpserot's MSYS2 Clang64 build for Windows
This is a bundle of my own build that i use for luanti gaming 🔥🔥🔥. You can
download it from the releases on the right. I know it's normal for Windows users
to just download some stranger's executables and pray it works no viruses 100%
(free robux), but my advice is to actually compile it on your own. At the very
least, you won't have to trust me :D

For my future self, the instructions for building this is as follows:

1. Download the source code for the Luanti version you want to use. For example, click the **Source code** (zip or tar.gz) asset in the [github release page for version 5.12.0](https://github.com/luanti-org/luanti/releases/tag/5.12.0). Extract it and navigate to that directory.

   Another approach is to just clone the repository: `git clone 'https://github.com/luanti-org/luanti.git'`

2. Follow instructions in the official documentation for engine devs for [compiling Luanti on Windows using MSYS2 + Clang64 environment](https://docs.luanti.org/for-engine-devs/compiling/windows/). Don't use the MSVC + vcpkg one, it's not really well-maintained as other methods.

   **WARNING**: the typical size of the tools installed is ~2GB.

3. With luanti compiled, it's recommended you bundle your DLLs since right now it will only run in the Clang64 environment. Follow the [instructions to bundle the DLLs](https://docs.luanti.org/for-engine-devs/compiling/windows/#bundling-dlls) in the same document. You'll be using [rollerozxa's bundledll bash script](https://github.com/rollerozxa/msys2-bundledlls)