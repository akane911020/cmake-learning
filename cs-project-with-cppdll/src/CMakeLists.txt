cmake_minimum_required(VERSION 3.8)
set(CMAKE_SUPPRESS_REGENERATION true)

project(CSharpWithCppDLL)

set(CMAKE_CONFIGURATION_TYPES Debug Release)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/DEBUG")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/DEBUG")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/RELEASE")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/RELEASE")

add_subdirectory(DllCaller)
add_subdirectory(HelloWorldDll)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT DllCaller)
