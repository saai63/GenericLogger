CMAKE_MINIMUM_REQUIRED(VERSION 3.10)
project(Generic_Logger)

add_library(generic_logger src/logger.cpp)
include_directories(include)

# Tests
find_package(GTest REQUIRED)
if (GTest_FOUND)
    message("Found GTest")
    add_executable(Generic_Logger_test test/test_logger.cpp)
    target_link_libraries(Generic_Logger_test GTest::GTest GTest::Main generic_logger)
endif()
