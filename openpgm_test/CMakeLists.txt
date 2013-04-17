cmake_minimum_required(VERSION 2.8)

project(pgm_test CXX)

include_directories(/usr/include/pgm-5.1)
FIND_PACKAGE(Boost COMPONENTS system thread)

add_executable(pgm_test pgmsocket.h pgmsocket.cpp main.cpp)

TARGET_LINK_LIBRARIES(pgm_test pgm ${Boost_LIBRARIES})
