# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kailashgautham/Developer/Coding-Challenges/json-parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kailashgautham/Developer/Coding-Challenges/json-parser/build

# Include any dependencies generated for this target.
include CMakeFiles/json-parser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/json-parser.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/json-parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/json-parser.dir/flags.make

CMakeFiles/json-parser.dir/main.cpp.o: CMakeFiles/json-parser.dir/flags.make
CMakeFiles/json-parser.dir/main.cpp.o: /Users/kailashgautham/Developer/Coding-Challenges/json-parser/main.cpp
CMakeFiles/json-parser.dir/main.cpp.o: CMakeFiles/json-parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kailashgautham/Developer/Coding-Challenges/json-parser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/json-parser.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/json-parser.dir/main.cpp.o -MF CMakeFiles/json-parser.dir/main.cpp.o.d -o CMakeFiles/json-parser.dir/main.cpp.o -c /Users/kailashgautham/Developer/Coding-Challenges/json-parser/main.cpp

CMakeFiles/json-parser.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/json-parser.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kailashgautham/Developer/Coding-Challenges/json-parser/main.cpp > CMakeFiles/json-parser.dir/main.cpp.i

CMakeFiles/json-parser.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/json-parser.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kailashgautham/Developer/Coding-Challenges/json-parser/main.cpp -o CMakeFiles/json-parser.dir/main.cpp.s

CMakeFiles/json-parser.dir/trim.cpp.o: CMakeFiles/json-parser.dir/flags.make
CMakeFiles/json-parser.dir/trim.cpp.o: /Users/kailashgautham/Developer/Coding-Challenges/json-parser/trim.cpp
CMakeFiles/json-parser.dir/trim.cpp.o: CMakeFiles/json-parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kailashgautham/Developer/Coding-Challenges/json-parser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/json-parser.dir/trim.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/json-parser.dir/trim.cpp.o -MF CMakeFiles/json-parser.dir/trim.cpp.o.d -o CMakeFiles/json-parser.dir/trim.cpp.o -c /Users/kailashgautham/Developer/Coding-Challenges/json-parser/trim.cpp

CMakeFiles/json-parser.dir/trim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/json-parser.dir/trim.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kailashgautham/Developer/Coding-Challenges/json-parser/trim.cpp > CMakeFiles/json-parser.dir/trim.cpp.i

CMakeFiles/json-parser.dir/trim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/json-parser.dir/trim.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kailashgautham/Developer/Coding-Challenges/json-parser/trim.cpp -o CMakeFiles/json-parser.dir/trim.cpp.s

# Object files for target json-parser
json__parser_OBJECTS = \
"CMakeFiles/json-parser.dir/main.cpp.o" \
"CMakeFiles/json-parser.dir/trim.cpp.o"

# External object files for target json-parser
json__parser_EXTERNAL_OBJECTS =

json-parser: CMakeFiles/json-parser.dir/main.cpp.o
json-parser: CMakeFiles/json-parser.dir/trim.cpp.o
json-parser: CMakeFiles/json-parser.dir/build.make
json-parser: CMakeFiles/json-parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kailashgautham/Developer/Coding-Challenges/json-parser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable json-parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/json-parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/json-parser.dir/build: json-parser
.PHONY : CMakeFiles/json-parser.dir/build

CMakeFiles/json-parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/json-parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/json-parser.dir/clean

CMakeFiles/json-parser.dir/depend:
	cd /Users/kailashgautham/Developer/Coding-Challenges/json-parser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kailashgautham/Developer/Coding-Challenges/json-parser /Users/kailashgautham/Developer/Coding-Challenges/json-parser /Users/kailashgautham/Developer/Coding-Challenges/json-parser/build /Users/kailashgautham/Developer/Coding-Challenges/json-parser/build /Users/kailashgautham/Developer/Coding-Challenges/json-parser/build/CMakeFiles/json-parser.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/json-parser.dir/depend

