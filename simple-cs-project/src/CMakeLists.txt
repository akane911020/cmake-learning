cmake_minimum_required(VERSION 3.8)
set(CMAKE_SUPPRESS_REGENERATION true)

project(SimpleCSharp)
enable_language(CSharp)
add_executable(HelloWorld main.cs)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT HelloWorld)
