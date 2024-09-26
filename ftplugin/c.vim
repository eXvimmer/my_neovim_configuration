" let @b='make build'
" let @c='make build-clean'
" let @f='make build-clean-first'
" let @g='make generate'
" let @h='make help'
" let @r='make run'
" let @t='make test'
let @b='cmake --build ./build'
let @c='cmake --build ./build -t clean'
" let @c='conan install . --output-folder=build --build=missing'
let @d='cd ./build/bin/ && gf2 ./prog && cd ../../ > /dev/null 2>&1'
let @f='cmake --build ./build --clean-first'
let @g='cmake -S . -B ./build -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_TOOLCHAIN_FILE=external/vcpkg/scripts/buildsystems/vcpkg.cmake'
let @i='cmake --install ./build'
" let @r='cmake --build ./build && cd ./build/bin/ && ./prog && cd ../../ > /dev/null 2>&1'
let @r='cd ./build/bin/ && ./prog && cd ../../ > /dev/null 2>&1'
let @t='cd ./build && ctest --schedule-random --output-on-failure && cd - > /dev/null 2>&1'
