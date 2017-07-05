cmake_minimum_required(VERSION 3.1)

include(toolchain.cmake)


project(Sample C CXX ASM)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug CACHE STRING "" FORCE)
else()
    set(CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE} CACHE STRING "" FORCE)
endif()

message(STATUS "Using C compiler from ${CMAKE_C_COMPILER}")
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
message(STATUS "Code coverage: ${ENABLE_COVERAGE}")

add_subdirectory(libs/settings)
add_subdirectory(libs/verifier)
add_subdirectory(hello_world)