# 1. 识别编译器
if(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    set(COMPILER_MACRO "COMPILER_MSVC")
    set(COMPILER_VER   "_MSC_VER=${_MSC_VER}")
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(COMPILER_MACRO "COMPILER_GCC")
    # set(COMPILER_VER   "__GNUC__=${__GNUC__}")
elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")   # 普通 Clang 或 ARMClang
    set(COMPILER_MACRO "COMPILER_CLANG")
    set(COMPILER_VER   "__clang_major__=${__clang_major__}")
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "ARMClang")
    set(COMPILER_MACRO "COMPILER_ARMCLANG")
    set(COMPILER_VER   "__ARMCLANG_VERSION=${__ARMCLANG_VERSION}")
else()
    set(COMPILER_MACRO "COMPILER_UNKNOWN")
endif()

# 2. 识别 32/64 位
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(ARCH_MACRO "ARCH_64BIT")
else()
    set(ARCH_MACRO "ARCH_32BIT")
endif()

# 3. 识别操作系统
if(WIN32)
    set(SYS_MACRO "SYSTEM_WINDOWS")
elseif(ANDROID)
    set(SYS_MACRO "SYSTEM_ANDROID")
elseif(LINUX)
    set(SYS_MACRO "SYSTEM_LINUX")
elseif(APPLE)
    set(SYS_MACRO "SYSTEM_MACOS")
else()
    set(SYS_MACRO "SYSTEM_UNKNOWN")
endif()

# 4. 一次性落到 INTERFACE 库（头文件里直接 `#ifdef COMPILER_MSVC` 即可）
add_library(compiler_defs INTERFACE)
target_compile_definitions(compiler_defs INTERFACE
    ${COMPILER_MACRO}
    ${COMPILER_VER}
    ${ARCH_MACRO}
    ${SYS_MACRO}
)