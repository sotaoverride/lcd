# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build

# Include any dependencies generated for this target.
include lib/Fonts/CMakeFiles/Fonts.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/Fonts/CMakeFiles/Fonts.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Fonts/CMakeFiles/Fonts.dir/flags.make

lib/Fonts/CMakeFiles/Fonts.dir/font12.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font12.c.obj: ../lib/Fonts/font12.c
lib/Fonts/CMakeFiles/Fonts.dir/font12.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font12.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font12.c.obj -MF CMakeFiles/Fonts.dir/font12.c.obj.d -o CMakeFiles/Fonts.dir/font12.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font12.c

lib/Fonts/CMakeFiles/Fonts.dir/font12.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font12.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font12.c > CMakeFiles/Fonts.dir/font12.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font12.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font12.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font12.c -o CMakeFiles/Fonts.dir/font12.c.s

lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.obj: ../lib/Fonts/font12CN.c
lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.obj -MF CMakeFiles/Fonts.dir/font12CN.c.obj.d -o CMakeFiles/Fonts.dir/font12CN.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font12CN.c

lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font12CN.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font12CN.c > CMakeFiles/Fonts.dir/font12CN.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font12CN.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font12CN.c -o CMakeFiles/Fonts.dir/font12CN.c.s

lib/Fonts/CMakeFiles/Fonts.dir/font16.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font16.c.obj: ../lib/Fonts/font16.c
lib/Fonts/CMakeFiles/Fonts.dir/font16.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font16.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font16.c.obj -MF CMakeFiles/Fonts.dir/font16.c.obj.d -o CMakeFiles/Fonts.dir/font16.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font16.c

lib/Fonts/CMakeFiles/Fonts.dir/font16.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font16.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font16.c > CMakeFiles/Fonts.dir/font16.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font16.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font16.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font16.c -o CMakeFiles/Fonts.dir/font16.c.s

lib/Fonts/CMakeFiles/Fonts.dir/font20.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font20.c.obj: ../lib/Fonts/font20.c
lib/Fonts/CMakeFiles/Fonts.dir/font20.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font20.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font20.c.obj -MF CMakeFiles/Fonts.dir/font20.c.obj.d -o CMakeFiles/Fonts.dir/font20.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font20.c

lib/Fonts/CMakeFiles/Fonts.dir/font20.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font20.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font20.c > CMakeFiles/Fonts.dir/font20.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font20.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font20.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font20.c -o CMakeFiles/Fonts.dir/font20.c.s

lib/Fonts/CMakeFiles/Fonts.dir/font24.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font24.c.obj: ../lib/Fonts/font24.c
lib/Fonts/CMakeFiles/Fonts.dir/font24.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font24.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font24.c.obj -MF CMakeFiles/Fonts.dir/font24.c.obj.d -o CMakeFiles/Fonts.dir/font24.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font24.c

lib/Fonts/CMakeFiles/Fonts.dir/font24.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font24.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font24.c > CMakeFiles/Fonts.dir/font24.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font24.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font24.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font24.c -o CMakeFiles/Fonts.dir/font24.c.s

lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.obj: ../lib/Fonts/font24CN.c
lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.obj -MF CMakeFiles/Fonts.dir/font24CN.c.obj.d -o CMakeFiles/Fonts.dir/font24CN.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font24CN.c

lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font24CN.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font24CN.c > CMakeFiles/Fonts.dir/font24CN.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font24CN.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font24CN.c -o CMakeFiles/Fonts.dir/font24CN.c.s

lib/Fonts/CMakeFiles/Fonts.dir/font8.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/flags.make
lib/Fonts/CMakeFiles/Fonts.dir/font8.c.obj: ../lib/Fonts/font8.c
lib/Fonts/CMakeFiles/Fonts.dir/font8.c.obj: lib/Fonts/CMakeFiles/Fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object lib/Fonts/CMakeFiles/Fonts.dir/font8.c.obj"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/Fonts/CMakeFiles/Fonts.dir/font8.c.obj -MF CMakeFiles/Fonts.dir/font8.c.obj.d -o CMakeFiles/Fonts.dir/font8.c.obj -c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font8.c

lib/Fonts/CMakeFiles/Fonts.dir/font8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Fonts.dir/font8.c.i"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font8.c > CMakeFiles/Fonts.dir/font8.c.i

lib/Fonts/CMakeFiles/Fonts.dir/font8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Fonts.dir/font8.c.s"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts/font8.c -o CMakeFiles/Fonts.dir/font8.c.s

# Object files for target Fonts
Fonts_OBJECTS = \
"CMakeFiles/Fonts.dir/font12.c.obj" \
"CMakeFiles/Fonts.dir/font12CN.c.obj" \
"CMakeFiles/Fonts.dir/font16.c.obj" \
"CMakeFiles/Fonts.dir/font20.c.obj" \
"CMakeFiles/Fonts.dir/font24.c.obj" \
"CMakeFiles/Fonts.dir/font24CN.c.obj" \
"CMakeFiles/Fonts.dir/font8.c.obj"

# External object files for target Fonts
Fonts_EXTERNAL_OBJECTS =

lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font12.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font12CN.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font16.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font20.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font24.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font24CN.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/font8.c.obj
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/build.make
lib/Fonts/libFonts.a: lib/Fonts/CMakeFiles/Fonts.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libFonts.a"
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && $(CMAKE_COMMAND) -P CMakeFiles/Fonts.dir/cmake_clean_target.cmake
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Fonts.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Fonts/CMakeFiles/Fonts.dir/build: lib/Fonts/libFonts.a
.PHONY : lib/Fonts/CMakeFiles/Fonts.dir/build

lib/Fonts/CMakeFiles/Fonts.dir/clean:
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts && $(CMAKE_COMMAND) -P CMakeFiles/Fonts.dir/cmake_clean.cmake
.PHONY : lib/Fonts/CMakeFiles/Fonts.dir/clean

lib/Fonts/CMakeFiles/Fonts.dir/depend:
	cd /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/lib/Fonts /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts /home/aatir/pico/pico-examples/1.28inch_Touch_LCD_Pico/c/build/lib/Fonts/CMakeFiles/Fonts.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Fonts/CMakeFiles/Fonts.dir/depend

