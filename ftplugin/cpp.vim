let @b='cmake --build ./build'
let @c='cmake --build ./build -t clean'
let @f='cmake --build ./build --clean-first'
let @d='cmake -S . -B ./build -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_TOOLCHAIN_FILE=external/vcpkg/scripts/buildsystems/vcpkg.cmake'
let @i='cmake --install ./build'
let @r='cmake -S . -B ./build_release -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=external/vcpkg/scripts/buildsystems/vcpkg.cmake'
let @t='cd ./build && ctest --schedule-random --output-on-failure && cd - > /dev/null 2>&1'
let @v='cd ./build/bin && valgrind ./main && cd - > /dev/null 2>&1'
let @x='cd ./build/bin/ && ./main; ret=$?; cd ../../; (exit $ret)'
