# sh ../luanti-win-clang64/bundle.sh
# Run this from luanti\.build directory on MSYS2 Clang64

partialZip="luanti-$(git describe --tags --exact-match)-win64.zip"
partialUnzip="$(basename "./$partialZip" .zip)"
rm "$partialZip" 2>/dev/null
cpack -G ZIP
unzip "$partialZip" -d "$partialUnzip"
if test -d "$partialUnzip/$partialUnzip"; then
    mv "$partialUnzip/$partialUnzip"/* "$partialUnzip"
    rmdir "$partialUnzip/$partialUnzip"
fi
echo a | bundledlls "$partialUnzip/bin/luanti.exe" "$partialUnzip/bin/"
zip -r "$partialZip" "$partialUnzip"/*
rm -r "$partialUnzip"
