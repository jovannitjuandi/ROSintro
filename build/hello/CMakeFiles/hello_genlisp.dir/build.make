# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/owr01/practice/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/owr01/practice/build

# Utility rule file for hello_genlisp.

# Include the progress variables for this target.
include hello/CMakeFiles/hello_genlisp.dir/progress.make

hello_genlisp: hello/CMakeFiles/hello_genlisp.dir/build.make

.PHONY : hello_genlisp

# Rule to build all files generated by this target.
hello/CMakeFiles/hello_genlisp.dir/build: hello_genlisp

.PHONY : hello/CMakeFiles/hello_genlisp.dir/build

hello/CMakeFiles/hello_genlisp.dir/clean:
	cd /home/owr01/practice/build/hello && $(CMAKE_COMMAND) -P CMakeFiles/hello_genlisp.dir/cmake_clean.cmake
.PHONY : hello/CMakeFiles/hello_genlisp.dir/clean

hello/CMakeFiles/hello_genlisp.dir/depend:
	cd /home/owr01/practice/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/owr01/practice/src /home/owr01/practice/src/hello /home/owr01/practice/build /home/owr01/practice/build/hello /home/owr01/practice/build/hello/CMakeFiles/hello_genlisp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hello/CMakeFiles/hello_genlisp.dir/depend

