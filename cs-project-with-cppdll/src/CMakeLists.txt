cmake_minimum_required(VERSION 3.8)
set(CMAKE_SUPPRESS_REGENERATION true)

project(CSharpWithCppDLL)

add_subdirectory(DllCaller)
add_subdirectory(HelloWorldDll)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT DllCaller)
