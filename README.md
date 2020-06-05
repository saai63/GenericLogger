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
Running the command 'make clean all' should build the libraries and test application.
Please make sure that you have gtest installed as we use gtest for unit tests.
If you wish to build only the logger library, you may run 'make clean logger'

# Unit tests and code coverage report
Once you have build the library and unit test application, run the script 'run_tests.sh'.
This will generate the code coverage report under 'Report' folder.
Open Report/index.html in your browser to view the coverage.

# TODO
* Add test cases for multi-process and multi-thread scenario
* Add doxygen documentation
