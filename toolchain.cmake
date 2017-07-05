INCLUDE(CMakeForceCompiler)

set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_INCLUDES ON)
set(CMAKE_C_USE_RESPONSE_FILE_FOR_INCLUDES ON)
set(CMAKE_NEED_RESPONSE ON)

find_program(CC NAMES arm-none-eabi-gcc PATHS $ENV{ARM_TOOLCHAIN})
find_program(CXX NAMES arm-none-eabi-g++ PATHS $ENV{ARM_TOOLCHAIN})

find_program(CMAKE_GCOV NAMES arm-none-eabi-gcov PATHS $ENV{ARM_TOOLCHAIN})
find_program(CMAKE_AR NAMES arm-none-eabi-gcc-ar PATHS $ENV{ARM_TOOLCHAIN})
find_program(CMAKE_RANLIB NAMES arm-none-eabi-gcc-ranlib PATHS $ENV{ARM_TOOLCHAIN})
find_program(CMAKE_OBJCOPY NAMES arm-none-eabi-objcopy PATHS $ENV{ARM_TOOLCHAIN})
find_program(CMAKE_OBJDUMP NAMES arm-none-eabi-objdump PATHS $ENV{ARM_TOOLCHAIN})
find_program(CMAKE_GCC_SIZE NAMES arm-none-eabi-size PATHS $ENV{ARM_TOOLCHAIN})
find_program(CMAKE_MAKE_PROGRAM NAMES make PATHS $ENV{ARM_TOOLCHAIN})

CMAKE_FORCE_C_COMPILER(${CC} GNU)
CMAKE_FORCE_CXX_COMPILER(${CXX} GNU)


set(CMAKE_EXECUTABLE_FORMAT ELF)