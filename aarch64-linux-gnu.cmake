message(STATUS "----------------aarch-linux-gnu---------------")
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(tools /home/gxx/Documents/arm/gcc-linaro-12.2.1-2023.04-x86_64_aarch64-linux-gnu)
set(CMAKE_C_COMPILER ${tools}/bin/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/aarch64-linux-gnu-g++)


#cmake -DCMAKE_TOOLCHAIN_FILE=../aarch64-linux-gnu.cmake ..