# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\GitHub\FEM_GL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\GitHub\FEM_GL\cmake-build-debug

# Utility rule file for update_mappings.

# Include the progress variables for this target.
include REQUIRED\src\CMakeFiles\update_mappings.dir\progress.make

REQUIRED\src\CMakeFiles\update_mappings:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\GitHub\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating gamepad mappings from upstream repository"
	cd E:\GitHub\FEM_GL\external\glfw-3.3.6\src
	echo >nul && "D:\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -P E:/GitHub/FEM_GL/external/glfw-3.3.6/CMake/GenerateMappings.cmake mappings.h.in mappings.h
	cd E:\GitHub\FEM_GL\cmake-build-debug

update_mappings: REQUIRED\src\CMakeFiles\update_mappings
update_mappings: REQUIRED\src\CMakeFiles\update_mappings.dir\build.make

.PHONY : update_mappings

# Rule to build all files generated by this target.
REQUIRED\src\CMakeFiles\update_mappings.dir\build: update_mappings

.PHONY : REQUIRED\src\CMakeFiles\update_mappings.dir\build

REQUIRED\src\CMakeFiles\update_mappings.dir\clean:
	cd E:\GitHub\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -P CMakeFiles\update_mappings.dir\cmake_clean.cmake
	cd E:\GitHub\FEM_GL\cmake-build-debug
.PHONY : REQUIRED\src\CMakeFiles\update_mappings.dir\clean

REQUIRED\src\CMakeFiles\update_mappings.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\GitHub\FEM_GL E:\GitHub\FEM_GL\external\glfw-3.3.6\src E:\GitHub\FEM_GL\cmake-build-debug E:\GitHub\FEM_GL\cmake-build-debug\REQUIRED\src E:\GitHub\FEM_GL\cmake-build-debug\REQUIRED\src\CMakeFiles\update_mappings.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : REQUIRED\src\CMakeFiles\update_mappings.dir\depend

