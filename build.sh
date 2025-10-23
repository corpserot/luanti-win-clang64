#sh luanti-win-clang64/build.sh
# run this from the git repo root directory
set -e
pacman -Syu git mingw-w64-clang-x86_64-{clang,cmake,ninja,curl-winssl,libpng,libjpeg-turbo,freetype,libogg,libvorbis,sqlite3,openal,zstd,gettext,luajit,SDL2}
cmake -S . -B .build -G 'Ninja'
cmake --build .build -j"$(nproc)"