# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = D:\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\Github\FEM_GL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Github\FEM_GL\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\fem.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\fem.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\fem.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\fem.dir\flags.make

CMakeFiles\fem.dir\src\main.cpp.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\src\main.cpp.obj: ..\src\main.cpp
CMakeFiles\fem.dir\src\main.cpp.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fem.dir/src/main.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\src\main.cpp.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\src\main.cpp.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\src\main.cpp
<<

CMakeFiles\fem.dir\src\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fem.dir/src/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\src\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Github\FEM_GL\src\main.cpp
<<

CMakeFiles\fem.dir\src\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fem.dir/src/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\src\main.cpp.s /c E:\Github\FEM_GL\src\main.cpp
<<

CMakeFiles\fem.dir\src\stb_image.cpp.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\src\stb_image.cpp.obj: ..\src\stb_image.cpp
CMakeFiles\fem.dir\src\stb_image.cpp.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fem.dir/src/stb_image.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\src\stb_image.cpp.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\src\stb_image.cpp.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\src\stb_image.cpp
<<

CMakeFiles\fem.dir\src\stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fem.dir/src/stb_image.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\src\stb_image.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Github\FEM_GL\src\stb_image.cpp
<<

CMakeFiles\fem.dir\src\stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fem.dir/src/stb_image.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\src\stb_image.cpp.s /c E:\Github\FEM_GL\src\stb_image.cpp
<<

CMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj: ..\src\render\glfwWindow.cpp
CMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/fem.dir/src/render/glfwWindow.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\src\render\glfwWindow.cpp
<<

CMakeFiles\fem.dir\src\render\glfwWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fem.dir/src/render/glfwWindow.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\src\render\glfwWindow.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Github\FEM_GL\src\render\glfwWindow.cpp
<<

CMakeFiles\fem.dir\src\render\glfwWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fem.dir/src/render/glfwWindow.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\src\render\glfwWindow.cpp.s /c E:\Github\FEM_GL\src\render\glfwWindow.cpp
<<

CMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj: ..\src\loader\tetLoader.cpp
CMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/fem.dir/src/loader/tetLoader.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\src\loader\tetLoader.cpp
<<

CMakeFiles\fem.dir\src\loader\tetLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fem.dir/src/loader/tetLoader.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\src\loader\tetLoader.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Github\FEM_GL\src\loader\tetLoader.cpp
<<

CMakeFiles\fem.dir\src\loader\tetLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fem.dir/src/loader/tetLoader.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\src\loader\tetLoader.cpp.s /c E:\Github\FEM_GL\src\loader\tetLoader.cpp
<<

CMakeFiles\fem.dir\src\cubegen\obj.cpp.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\src\cubegen\obj.cpp.obj: ..\src\cubegen\obj.cpp
CMakeFiles\fem.dir\src\cubegen\obj.cpp.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/fem.dir/src/cubegen/obj.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\src\cubegen\obj.cpp.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\src\cubegen\obj.cpp.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\src\cubegen\obj.cpp
<<

CMakeFiles\fem.dir\src\cubegen\obj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fem.dir/src/cubegen/obj.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\src\cubegen\obj.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Github\FEM_GL\src\cubegen\obj.cpp
<<

CMakeFiles\fem.dir\src\cubegen\obj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fem.dir/src/cubegen/obj.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\src\cubegen\obj.cpp.s /c E:\Github\FEM_GL\src\cubegen\obj.cpp
<<

CMakeFiles\fem.dir\external\glad\src\glad.c.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\external\glad\src\glad.c.obj: ..\external\glad\src\glad.c
CMakeFiles\fem.dir\external\glad\src\glad.c.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/fem.dir/external/glad/src/glad.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\external\glad\src\glad.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\external\glad\src\glad.c.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\external\glad\src\glad.c
<<

CMakeFiles\fem.dir\external\glad\src\glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fem.dir/external/glad/src/glad.c.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\external\glad\src\glad.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glad\src\glad.c
<<

CMakeFiles\fem.dir\external\glad\src\glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fem.dir/external/glad/src/glad.c.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\external\glad\src\glad.c.s /c E:\Github\FEM_GL\external\glad\src\glad.c
<<

CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj: ..\external\glfw-3.3.6\deps\getopt.c
CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/fem.dir/external/glfw-3.3.6/deps/getopt.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\deps\getopt.c
<<

CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fem.dir/external/glfw-3.3.6/deps/getopt.c.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\deps\getopt.c
<<

CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fem.dir/external/glfw-3.3.6/deps/getopt.c.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\deps\getopt.c
<<

CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj: CMakeFiles\fem.dir\flags.make
CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj: ..\external\glfw-3.3.6\deps\tinycthread.c
CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj: CMakeFiles\fem.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/fem.dir/external/glfw-3.3.6/deps/tinycthread.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj /FdCMakeFiles\fem.dir\ /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\deps\tinycthread.c
<<

CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fem.dir/external/glfw-3.3.6/deps/tinycthread.c.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\deps\tinycthread.c
<<

CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fem.dir/external/glfw-3.3.6/deps/tinycthread.c.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\deps\tinycthread.c
<<

# Object files for target fem
fem_OBJECTS = \
"CMakeFiles\fem.dir\src\main.cpp.obj" \
"CMakeFiles\fem.dir\src\stb_image.cpp.obj" \
"CMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj" \
"CMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj" \
"CMakeFiles\fem.dir\src\cubegen\obj.cpp.obj" \
"CMakeFiles\fem.dir\external\glad\src\glad.c.obj" \
"CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj" \
"CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj"

# External object files for target fem
fem_EXTERNAL_OBJECTS =

fem.exe: CMakeFiles\fem.dir\src\main.cpp.obj
fem.exe: CMakeFiles\fem.dir\src\stb_image.cpp.obj
fem.exe: CMakeFiles\fem.dir\src\render\glfwWindow.cpp.obj
fem.exe: CMakeFiles\fem.dir\src\loader\tetLoader.cpp.obj
fem.exe: CMakeFiles\fem.dir\src\cubegen\obj.cpp.obj
fem.exe: CMakeFiles\fem.dir\external\glad\src\glad.c.obj
fem.exe: CMakeFiles\fem.dir\external\glfw-3.3.6\deps\getopt.c.obj
fem.exe: CMakeFiles\fem.dir\external\glfw-3.3.6\deps\tinycthread.c.obj
fem.exe: CMakeFiles\fem.dir\build.make
fem.exe: REQUIRED\src\glfw3.lib
fem.exe: CMakeFiles\fem.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable fem.exe"
	D:\JetBrains\Toolbox\apps\CLion\ch-0\213.6777.58\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\fem.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\fem.dir\objects1.rsp @<<
 /out:fem.exe /implib:fem.lib /pdb:E:\Github\FEM_GL\cmake-build-debug\fem.pdb /version:0.0 /machine:x64 /debug /INCREMENTAL /subsystem:console  REQUIRED\src\glfw3.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\fem.dir\build: fem.exe
.PHONY : CMakeFiles\fem.dir\build

CMakeFiles\fem.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\fem.dir\cmake_clean.cmake
.PHONY : CMakeFiles\fem.dir\clean

CMakeFiles\fem.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\Github\FEM_GL E:\Github\FEM_GL E:\Github\FEM_GL\cmake-build-debug E:\Github\FEM_GL\cmake-build-debug E:\Github\FEM_GL\cmake-build-debug\CMakeFiles\fem.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\fem.dir\depend
