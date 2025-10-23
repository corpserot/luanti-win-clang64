# ACorp's MSYS2 Clang64 build for Windows
This is a bundle of my own build that i use for luanti gaming 🔥🔥🔥. You can download it from the releases on the right. I know it's normal for Windows users to just download some stranger's executables and pray it works no viruses 100% (free robux), but my advice is to actually compile it on your own. At the very least, you won't have to trust me to not infect your computer with ligma :D

When updating, you can extract the archive into a folder then copy the following from the previous install:
- `luanti-old\client`
- `luanti-old\clientmods`
- `luanti-old\games`
- `luanti-old\mod_data`
- `luanti-old\mods`
- `luanti-old\textures`
- `luanti-old\worlds`
- `luanti-old\minetest.conf`

For my future self, the instructions for building this is as follows:

1. Download the source code for the Luanti version you want to use. For example, click the **Source code** (zip or tar.gz) asset in the [github release page for version 5.14.0](https://github.com/luanti-org/luanti/releases/tag/5.14.0). Extract it and navigate to that directory.

   - Another approach is to just clone the repository: `git clone 'https://github.com/luanti-org/luanti.git'`
   - Then, switch to the version to play: `git switch --detach 5.14.0`

2. Follow instructions in the official documentation for engine devs for [compiling Luanti on Windows using MSYS2 + Clang64 environment](https://docs.luanti.org/for-engine-devs/compiling/windows/). Don't use the MSVC + vcpkg one, it's not really well-maintained as other methods.

   **WARNING**: the typical size of the tools installed is ~2GB.

3. With luanti compiled, it's recommended you bundle your DLLs since right now it will only run in the Clang64 environment. Follow the [instructions to bundle the DLLs](https://docs.luanti.org/for-engine-devs/compiling/windows/#bundling-dlls) in the same document. You'll be using [rollerozxa's bundledll bash script](https://github.com/rollerozxa/msys2-bundledlls)

4. When updating, you only need to update your binaries. So, from the new build copy over the contents of `bin\`.