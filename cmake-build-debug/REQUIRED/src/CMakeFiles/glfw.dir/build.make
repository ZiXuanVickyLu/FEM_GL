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
include REQUIRED\src\CMakeFiles\glfw.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.make

# Include the progress variables for this target.
include REQUIRED\src\CMakeFiles\glfw.dir\progress.make

# Include the compile flags for this target's objects.
include REQUIRED\src\CMakeFiles\glfw.dir\flags.make

REQUIRED\src\CMakeFiles\glfw.dir\context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\context.c.obj: ..\external\glfw-3.3.6\src\context.c
REQUIRED\src\CMakeFiles\glfw.dir\context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/context.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\context.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\context.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\context.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\context.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\init.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\init.c.obj: ..\external\glfw-3.3.6\src\init.c
REQUIRED\src\CMakeFiles\glfw.dir\init.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/init.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\init.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\init.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\init.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\init.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\init.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\init.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\init.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\input.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\input.c.obj: ..\external\glfw-3.3.6\src\input.c
REQUIRED\src\CMakeFiles\glfw.dir\input.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/input.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\input.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\input.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\input.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\input.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\input.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\input.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\input.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\monitor.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\monitor.c.obj: ..\external\glfw-3.3.6\src\monitor.c
REQUIRED\src\CMakeFiles\glfw.dir\monitor.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/monitor.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\monitor.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\monitor.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\monitor.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\monitor.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\monitor.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\monitor.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\monitor.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\vulkan.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\vulkan.c.obj: ..\external\glfw-3.3.6\src\vulkan.c
REQUIRED\src\CMakeFiles\glfw.dir\vulkan.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/vulkan.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\vulkan.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\vulkan.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\vulkan.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\vulkan.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\vulkan.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\vulkan.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\vulkan.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\window.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\window.c.obj: ..\external\glfw-3.3.6\src\window.c
REQUIRED\src\CMakeFiles\glfw.dir\window.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/window.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\window.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\window.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\window.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\window.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\window.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\window.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\window.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_init.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\win32_init.c.obj: ..\external\glfw-3.3.6\src\win32_init.c
REQUIRED\src\CMakeFiles\glfw.dir\win32_init.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/win32_init.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\win32_init.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\win32_init.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_init.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_init.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\win32_init.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_init.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_init.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\win32_init.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_init.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_joystick.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\win32_joystick.c.obj: ..\external\glfw-3.3.6\src\win32_joystick.c
REQUIRED\src\CMakeFiles\glfw.dir\win32_joystick.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/win32_joystick.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\win32_joystick.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\win32_joystick.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_joystick.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_joystick.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\win32_joystick.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_joystick.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_joystick.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\win32_joystick.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_joystick.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_monitor.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\win32_monitor.c.obj: ..\external\glfw-3.3.6\src\win32_monitor.c
REQUIRED\src\CMakeFiles\glfw.dir\win32_monitor.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/win32_monitor.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\win32_monitor.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\win32_monitor.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_monitor.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_monitor.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\win32_monitor.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_monitor.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_monitor.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\win32_monitor.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_monitor.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_time.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\win32_time.c.obj: ..\external\glfw-3.3.6\src\win32_time.c
REQUIRED\src\CMakeFiles\glfw.dir\win32_time.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/win32_time.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\win32_time.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\win32_time.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_time.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_time.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\win32_time.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_time.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_time.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\win32_time.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_time.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_thread.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\win32_thread.c.obj: ..\external\glfw-3.3.6\src\win32_thread.c
REQUIRED\src\CMakeFiles\glfw.dir\win32_thread.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/win32_thread.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\win32_thread.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\win32_thread.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_thread.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_thread.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\win32_thread.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_thread.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_thread.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\win32_thread.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_thread.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_window.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\win32_window.c.obj: ..\external\glfw-3.3.6\src\win32_window.c
REQUIRED\src\CMakeFiles\glfw.dir\win32_window.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/win32_window.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\win32_window.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\win32_window.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_window.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_window.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\win32_window.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_window.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\win32_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_window.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\win32_window.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\win32_window.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\wgl_context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\wgl_context.c.obj: ..\external\glfw-3.3.6\src\wgl_context.c
REQUIRED\src\CMakeFiles\glfw.dir\wgl_context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/wgl_context.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\wgl_context.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\wgl_context.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\wgl_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\wgl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/wgl_context.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\wgl_context.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\wgl_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\wgl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/wgl_context.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\wgl_context.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\wgl_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\egl_context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\egl_context.c.obj: ..\external\glfw-3.3.6\src\egl_context.c
REQUIRED\src\CMakeFiles\glfw.dir\egl_context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/egl_context.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\egl_context.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\egl_context.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\egl_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\egl_context.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\egl_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\egl_context.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\egl_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\osmesa_context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\flags.make
REQUIRED\src\CMakeFiles\glfw.dir\osmesa_context.c.obj: ..\external\glfw-3.3.6\src\osmesa_context.c
REQUIRED\src\CMakeFiles\glfw.dir\osmesa_context.c.obj: REQUIRED\src\CMakeFiles\glfw.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object REQUIRED/src/CMakeFiles/glfw.dir/osmesa_context.c.obj"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\glfw.dir\osmesa_context.c.obj.d --working-dir=E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\glfw.dir\osmesa_context.c.obj /FdCMakeFiles\glfw.dir\glfw.pdb /FS -c E:\Github\FEM_GL\external\glfw-3.3.6\src\osmesa_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\glfw.dir\osmesa_context.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Github\FEM_GL\external\glfw-3.3.6\src\osmesa_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

REQUIRED\src\CMakeFiles\glfw.dir\osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glfw.dir\osmesa_context.c.s /c E:\Github\FEM_GL\external\glfw-3.3.6\src\osmesa_context.c
<<
	cd E:\Github\FEM_GL\cmake-build-debug

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles\glfw.dir\context.c.obj" \
"CMakeFiles\glfw.dir\init.c.obj" \
"CMakeFiles\glfw.dir\input.c.obj" \
"CMakeFiles\glfw.dir\monitor.c.obj" \
"CMakeFiles\glfw.dir\vulkan.c.obj" \
"CMakeFiles\glfw.dir\window.c.obj" \
"CMakeFiles\glfw.dir\win32_init.c.obj" \
"CMakeFiles\glfw.dir\win32_joystick.c.obj" \
"CMakeFiles\glfw.dir\win32_monitor.c.obj" \
"CMakeFiles\glfw.dir\win32_time.c.obj" \
"CMakeFiles\glfw.dir\win32_thread.c.obj" \
"CMakeFiles\glfw.dir\win32_window.c.obj" \
"CMakeFiles\glfw.dir\wgl_context.c.obj" \
"CMakeFiles\glfw.dir\egl_context.c.obj" \
"CMakeFiles\glfw.dir\osmesa_context.c.obj"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\context.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\init.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\input.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\monitor.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\vulkan.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\window.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\win32_init.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\win32_joystick.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\win32_monitor.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\win32_time.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\win32_thread.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\win32_window.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\wgl_context.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\egl_context.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\osmesa_context.c.obj
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\build.make
REQUIRED\src\glfw3.lib: REQUIRED\src\CMakeFiles\glfw.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Github\FEM_GL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library glfw3.lib"
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -P CMakeFiles\glfw.dir\cmake_clean_target.cmake
	cd E:\Github\FEM_GL\cmake-build-debug
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\lib.exe /nologo /machine:x64 /out:glfw3.lib @CMakeFiles\glfw.dir\objects1.rsp 
	cd E:\Github\FEM_GL\cmake-build-debug

# Rule to build all files generated by this target.
REQUIRED\src\CMakeFiles\glfw.dir\build: REQUIRED\src\glfw3.lib
.PHONY : REQUIRED\src\CMakeFiles\glfw.dir\build

REQUIRED\src\CMakeFiles\glfw.dir\clean:
	cd E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src
	$(CMAKE_COMMAND) -P CMakeFiles\glfw.dir\cmake_clean.cmake
	cd E:\Github\FEM_GL\cmake-build-debug
.PHONY : REQUIRED\src\CMakeFiles\glfw.dir\clean

REQUIRED\src\CMakeFiles\glfw.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\Github\FEM_GL E:\Github\FEM_GL\external\glfw-3.3.6\src E:\Github\FEM_GL\cmake-build-debug E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src E:\Github\FEM_GL\cmake-build-debug\REQUIRED\src\CMakeFiles\glfw.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : REQUIRED\src\CMakeFiles\glfw.dir\depend
