# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build

# Include any dependencies generated for this target.
include ext/fmt/CMakeFiles/fmt.dir/depend.make

# Include the progress variables for this target.
include ext/fmt/CMakeFiles/fmt.dir/progress.make

# Include the compile flags for this target's objects.
include ext/fmt/CMakeFiles/fmt.dir/flags.make

ext/fmt/CMakeFiles/fmt.dir/src/format.cc.o: ext/fmt/CMakeFiles/fmt.dir/flags.make
ext/fmt/CMakeFiles/fmt.dir/src/format.cc.o: ../ext/fmt/src/format.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ext/fmt/CMakeFiles/fmt.dir/src/format.cc.o"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/src/format.cc.o -c /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt/src/format.cc

ext/fmt/CMakeFiles/fmt.dir/src/format.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/src/format.cc.i"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt/src/format.cc > CMakeFiles/fmt.dir/src/format.cc.i

ext/fmt/CMakeFiles/fmt.dir/src/format.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/src/format.cc.s"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt/src/format.cc -o CMakeFiles/fmt.dir/src/format.cc.s

ext/fmt/CMakeFiles/fmt.dir/src/posix.cc.o: ext/fmt/CMakeFiles/fmt.dir/flags.make
ext/fmt/CMakeFiles/fmt.dir/src/posix.cc.o: ../ext/fmt/src/posix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ext/fmt/CMakeFiles/fmt.dir/src/posix.cc.o"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/src/posix.cc.o -c /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt/src/posix.cc

ext/fmt/CMakeFiles/fmt.dir/src/posix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/src/posix.cc.i"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt/src/posix.cc > CMakeFiles/fmt.dir/src/posix.cc.i

ext/fmt/CMakeFiles/fmt.dir/src/posix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/src/posix.cc.s"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt/src/posix.cc -o CMakeFiles/fmt.dir/src/posix.cc.s

# Object files for target fmt
fmt_OBJECTS = \
"CMakeFiles/fmt.dir/src/format.cc.o" \
"CMakeFiles/fmt.dir/src/posix.cc.o"

# External object files for target fmt
fmt_EXTERNAL_OBJECTS =

ext/fmt/libfmt.a: ext/fmt/CMakeFiles/fmt.dir/src/format.cc.o
ext/fmt/libfmt.a: ext/fmt/CMakeFiles/fmt.dir/src/posix.cc.o
ext/fmt/libfmt.a: ext/fmt/CMakeFiles/fmt.dir/build.make
ext/fmt/libfmt.a: ext/fmt/CMakeFiles/fmt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libfmt.a"
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean_target.cmake
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ext/fmt/CMakeFiles/fmt.dir/build: ext/fmt/libfmt.a

.PHONY : ext/fmt/CMakeFiles/fmt.dir/build

ext/fmt/CMakeFiles/fmt.dir/clean:
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean.cmake
.PHONY : ext/fmt/CMakeFiles/fmt.dir/clean

ext/fmt/CMakeFiles/fmt.dir/depend:
	cd /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/ext/fmt /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt /Users/shihchungyu/NCKU/Programming_Language/homework/NCKU_PROGRAMMING_LANGUAGE/bonus/build/ext/fmt/CMakeFiles/fmt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ext/fmt/CMakeFiles/fmt.dir/depend

