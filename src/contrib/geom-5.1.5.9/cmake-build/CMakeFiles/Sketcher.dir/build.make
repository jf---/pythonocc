# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = "/Applications/CMake 2.8-5.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-5.app/Contents/bin/cmake" -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-5.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build

# Include any dependencies generated for this target.
include CMakeFiles/Sketcher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Sketcher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Sketcher.dir/flags.make

CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o: CMakeFiles/Sketcher.dir/flags.make
CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o: ../src/Sketcher/Sketcher_Profile.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o -c /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/src/Sketcher/Sketcher_Profile.cpp

CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/src/Sketcher/Sketcher_Profile.cpp > CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.i

CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/src/Sketcher/Sketcher_Profile.cpp -o CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.s

CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.requires:
.PHONY : CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.requires

CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.provides: CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.requires
	$(MAKE) -f CMakeFiles/Sketcher.dir/build.make CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.provides.build
.PHONY : CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.provides

CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.provides.build: CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o

# Object files for target Sketcher
Sketcher_OBJECTS = \
"CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o"

# External object files for target Sketcher
Sketcher_EXTERNAL_OBJECTS =

cmake-build/libSketcher.dylib: CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o
cmake-build/libSketcher.dylib: CMakeFiles/Sketcher.dir/build.make
cmake-build/libSketcher.dylib: CMakeFiles/Sketcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library cmake-build/libSketcher.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Sketcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Sketcher.dir/build: cmake-build/libSketcher.dylib
.PHONY : CMakeFiles/Sketcher.dir/build

CMakeFiles/Sketcher.dir/requires: CMakeFiles/Sketcher.dir/src/Sketcher/Sketcher_Profile.cpp.o.requires
.PHONY : CMakeFiles/Sketcher.dir/requires

CMakeFiles/Sketcher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Sketcher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Sketcher.dir/clean

CMakeFiles/Sketcher.dir/depend:
	cd /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7 /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7 /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/CMakeFiles/Sketcher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Sketcher.dir/depend

