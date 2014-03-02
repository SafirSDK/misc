cmake_minimum_required(VERSION 2.8)

project(BoostSleep CXX)

#set(BOOST_ROOT $ENV{SAFIR_SDK})

set(Boost_NO_BOOST_CMAKE ON)
set(Boost_USE_MULTITHREADED ON)
FIND_PACKAGE(Boost COMPONENTS chrono thread system)

if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})
  link_directories(${Boost_LIBRARY_DIRS})
else()
  message(FATAL_ERROR "Failed to find a boost installation!")
endif()


#use dynamic linking with boost
ADD_DEFINITIONS(-DBOOST_ALL_DYN_LINK)


ADD_EXECUTABLE(BoostSleep_test BoostSleep_test.cpp)

IF (NOT MSVC)
  TARGET_LINK_LIBRARIES (BoostSleep_test ${Boost_LIBRARIES})
ENDIF()
