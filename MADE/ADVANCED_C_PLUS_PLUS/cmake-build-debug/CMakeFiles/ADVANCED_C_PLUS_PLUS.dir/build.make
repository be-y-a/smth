# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/flags.make

CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.o: CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/flags.make
CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.o: ../made-cpp-2020-hw/simple_compose/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.o"
	/Applications/Xcode_11_0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.o -c /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/made-cpp-2020-hw/simple_compose/src/main.cpp

CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.i"
	/Applications/Xcode_11_0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/made-cpp-2020-hw/simple_compose/src/main.cpp > CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.i

CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.s"
	/Applications/Xcode_11_0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/made-cpp-2020-hw/simple_compose/src/main.cpp -o CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.s

# Object files for target ADVANCED_C_PLUS_PLUS
ADVANCED_C_PLUS_PLUS_OBJECTS = \
"CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.o"

# External object files for target ADVANCED_C_PLUS_PLUS
ADVANCED_C_PLUS_PLUS_EXTERNAL_OBJECTS =

ADVANCED_C_PLUS_PLUS: CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/made-cpp-2020-hw/simple_compose/src/main.cpp.o
ADVANCED_C_PLUS_PLUS: CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/build.make
ADVANCED_C_PLUS_PLUS: CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ADVANCED_C_PLUS_PLUS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/build: ADVANCED_C_PLUS_PLUS

.PHONY : CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/build

CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/clean

CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/depend:
	cd /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug /Users/mvvm/Documents/REPS/ozon-made-shad/MADE/ADVANCED_C_PLUS_PLUS/cmake-build-debug/CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ADVANCED_C_PLUS_PLUS.dir/depend

