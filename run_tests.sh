#!/bin/bash
echo "Running tests..."
CURR_PATH=`pwd`
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CURR_PATH/lib
rm -rf Report
mkdir Report
cd bin
./gTestLogger.out
cd ..
echo "Generating coverage report"
lcov --capture --directory ./ -o cov.info
lcov --remove cov.info -o cov1.info '/usr/include/c++/5/*' 'gtest/*'
genhtml cov1.info -o Report
rm -rf *.gcno *.gcda *.info
