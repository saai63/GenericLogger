COVERAGE_FLAGS=-ftest-coverage -fprofile-arcs
MY_INCLUDE_PATH=include
MY_SRC_PATH=src
MY_LIB_PATH=lib
MY_BIN_PATH=bin
MY_TESTS_PATH=test

all : logger gtest_logger

logger:
	g++ $(COVERAGE_FLAGS) -I $(MY_INCLUDE_PATH) $(MY_SRC_PATH)/logger.cpp -o $(MY_LIB_PATH)/libLogger.so -fPIC -shared
gtest_logger:
	g++ -std=c++11 $(COVERAGE_FLAGS) -I $(MY_INCLUDE_PATH) $(MY_TESTS_PATH)/test_logger.cpp -o $(MY_BIN_PATH)/gTestLogger.out -L$(MY_LIB_PATH) -lLogger -lgtest -lgtest_main -lpthread
clean:
	rm -rf lib/* bin/* temp/* *.gcno *.gcda *.info