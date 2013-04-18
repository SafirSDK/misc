cmake_minimum_required(VERSION 2.8)

project(douf_deliver CXX)

include($ENV{SAFIR_SDK}/data/build/cmake_settings.txt)

add_executable(sender sender.cpp)
add_executable(receiver receiver.cpp)


FIND_PACKAGE(Boost COMPONENTS system)
if (NOT MSVC)
    TARGET_LINK_LIBRARIES(sender dots_cpp dots_generated-DoufTest-cpp dots_generated-Safir-cpp dots_generated-cpp dose_cpp ${Boost_LIBRARIES})
    TARGET_LINK_LIBRARIES(receiver dots_cpp dots_generated-DoufTest-cpp dots_generated-Safir-cpp dots_generated-cpp dose_cpp ${Boost_LIBRARIES})
endif()
