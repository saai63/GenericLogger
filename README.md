
![Build](https://github.com/saai63/GenericLogger/workflows/Build_Project/badge.svg
)                     [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# GenericLogger
A generic logger with support for logging to files with timestamp and PID, TID
The logger supports logging to console and also files.

# Log Levels
The log levels enabled by defailt are ERROR and WARNING.
If you need to change the same, use SET_LOG_LEVEL with a bitmask of all the log levels to be enabled.

# Log files
If you want to log to file instead of console, use SET_LOG_FILE.
Make sure that the parent folders exist. In case there is any issue with opening the file, logging will happen to console.
If a log file is already available, new logs are appended to the same.

# Building
* mkdir build # Create a temporary directory
* cd build
* cmake .. # Invoke cmake to create the Makefile
* make # Build

# Unit tests
* Inside build folder, you will find an executable Generic_Logger_test. Executing that exe will execute the tests.

# TODO
* Add test cases for multi-process and multi-thread scenario
* Add doxygen documentation
* Add coverage options to CMake and workflows
