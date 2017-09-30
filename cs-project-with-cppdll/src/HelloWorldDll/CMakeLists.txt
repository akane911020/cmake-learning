cmake_minimum_required(VERSION 3.8)
enable_language(CXX)
add_library(HelloWorldDll
  SHARED
  helloworld.h
  helloworld.cpp
)
add_definitions(-DDLL_EXPORT)
