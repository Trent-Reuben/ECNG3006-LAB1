# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/trent/trent-workspace/ECNG3006-LAB1/i2c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build

# Include any dependencies generated for this target.
include esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/flags.make

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/flags.make
esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj: /home/trent/esp/ESP8266_RTOS_SDK/components/esp_ringbuf/ringbuf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj"
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf && /home/trent/esp/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj   -c /home/trent/esp/ESP8266_RTOS_SDK/components/esp_ringbuf/ringbuf.c

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.i"
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf && /home/trent/esp/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/trent/esp/ESP8266_RTOS_SDK/components/esp_ringbuf/ringbuf.c > CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.i

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.s"
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf && /home/trent/esp/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/trent/esp/ESP8266_RTOS_SDK/components/esp_ringbuf/ringbuf.c -o CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.s

# Object files for target __idf_esp_ringbuf
__idf_esp_ringbuf_OBJECTS = \
"CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj"

# External object files for target __idf_esp_ringbuf
__idf_esp_ringbuf_EXTERNAL_OBJECTS =

esp-idf/esp_ringbuf/libesp_ringbuf.a: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj
esp-idf/esp_ringbuf/libesp_ringbuf.a: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/build.make
esp-idf/esp_ringbuf/libesp_ringbuf.a: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libesp_ringbuf.a"
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_ringbuf.dir/cmake_clean_target.cmake
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp_ringbuf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/build: esp-idf/esp_ringbuf/libesp_ringbuf.a

.PHONY : esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/build

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/clean:
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_ringbuf.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/clean

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/depend:
	cd /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/trent/trent-workspace/ECNG3006-LAB1/i2c /home/trent/esp/ESP8266_RTOS_SDK/components/esp_ringbuf /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf /home/trent/trent-workspace/ECNG3006-LAB1/i2c/build/esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/depend
