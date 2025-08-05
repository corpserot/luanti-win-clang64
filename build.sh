#sh luanti-win-clang64/build.sh
# run this from the git repo root directory
set -e
cmake -S . -B .build -G 'Ninja'
cmake --build .build -j"$(nproc)"