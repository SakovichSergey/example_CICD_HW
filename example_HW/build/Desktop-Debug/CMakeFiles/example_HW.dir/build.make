# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sergey/CICD_example/example_CICD_HW/example_HW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/example_HW.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/example_HW.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/example_HW.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example_HW.dir/flags.make

CMakeFiles/example_HW.dir/main.cpp.o: CMakeFiles/example_HW.dir/flags.make
CMakeFiles/example_HW.dir/main.cpp.o: /home/sergey/CICD_example/example_CICD_HW/example_HW/main.cpp
CMakeFiles/example_HW.dir/main.cpp.o: CMakeFiles/example_HW.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example_HW.dir/main.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_HW.dir/main.cpp.o -MF CMakeFiles/example_HW.dir/main.cpp.o.d -o CMakeFiles/example_HW.dir/main.cpp.o -c /home/sergey/CICD_example/example_CICD_HW/example_HW/main.cpp

CMakeFiles/example_HW.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_HW.dir/main.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sergey/CICD_example/example_CICD_HW/example_HW/main.cpp > CMakeFiles/example_HW.dir/main.cpp.i

CMakeFiles/example_HW.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_HW.dir/main.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sergey/CICD_example/example_CICD_HW/example_HW/main.cpp -o CMakeFiles/example_HW.dir/main.cpp.s

# Object files for target example_HW
example_HW_OBJECTS = \
"CMakeFiles/example_HW.dir/main.cpp.o"

# External object files for target example_HW
example_HW_EXTERNAL_OBJECTS =

example_HW: CMakeFiles/example_HW.dir/main.cpp.o
example_HW: CMakeFiles/example_HW.dir/build.make
example_HW: CMakeFiles/example_HW.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_HW"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_HW.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example_HW.dir/build: example_HW
.PHONY : CMakeFiles/example_HW.dir/build

CMakeFiles/example_HW.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example_HW.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example_HW.dir/clean

CMakeFiles/example_HW.dir/depend:
	cd /home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sergey/CICD_example/example_CICD_HW/example_HW /home/sergey/CICD_example/example_CICD_HW/example_HW /home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug /home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug /home/sergey/CICD_example/example_CICD_HW/example_HW/build/Desktop-Debug/CMakeFiles/example_HW.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/example_HW.dir/depend

