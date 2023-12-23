cmake_minimum_required(VERSION 3.22.1.)
project(CalculatorProject)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_GENERATOR "Ninja")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_library(calculator SHARED calculator.cpp)
add_executable(calculator_app main.cpp)
target_link_libraries(calculator_app calculator)
