CMAKE_MINIMUM_REQUIRED(VERSION 3.10)
project(Generic_Logger)

# Tests
find_package(GTest REQUIRED)
if (GTest_FOUND)
    add_executable(Generic_Logger_test test/test_logger.cpp)
    target_link_libraries(Generic_Logger_test GTest::GTest GTest::Main generic_logger)
endif()

# Coverage
if(CMAKE_BUILD_TYPE STREQUAL "coverage" OR CODE_COVERAGE)
    if(CMAKE_COMPILER_IS_GNUCXX)
        message("Building with lcov Code Coverage Tools")

        find_program(LCOV_PATH lcov)
        find_program(GENHTML_PATH genhtml)
        
        # Warning/Error messages
        if(NOT (CMAKE_BUILD_TYPE STREQUAL "Debug"))
            message(WARNING "Code coverage results with an optimized (non-Debug) build may be misleading")
        endif()

        if(NOT LCOV_PATH)
            message(FATAL_ERROR "lcov not found! Aborting...")
        endif()
        
        if(NOT GENHTML_PATH)
            message(FATAL_ERROR "genhtml not found! Aborting...")
        endif()

        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --coverage -fprofile-arcs -ftest-coverage")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage -fprofile-arcs -ftest-coverage")
    else()
        message(FATAL_ERROR "Code coverage requires GCC. Aborting.")
    endif()
endif()
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin/)
add_library(generic_logger src/logger.cpp)
include_directories(include)
