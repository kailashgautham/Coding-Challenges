# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name
project(json-parser)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable
add_executable(json-parser main.cpp trim.cpp)
