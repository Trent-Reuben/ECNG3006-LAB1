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
CMAKE_SOURCE_DIR = /home/trent/trent-workspace/ECNG3006-LAB1/hello_world

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	python /home/trent/esp/ESP8266_RTOS_SDK/tools/kconfig_new/confgen.py --kconfig /home/trent/esp/ESP8266_RTOS_SDK/Kconfig --config /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/sdkconfig --env-file /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build/config.env --env IDF_TARGET=esp8266 --output config /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/sdkconfig
	/usr/bin/cmake -E env COMPONENT_KCONFIGS=/home/trent/esp/ESP8266_RTOS_SDK/components/app_update/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/coap/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp-tls/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp-wolfssl/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp8266/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp_common/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp_event/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp_gdbstub/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp_http_client/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp_http_server/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/esp_https_ota/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/fatfs/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/freemodbus/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/freertos/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/heap/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/libsodium/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/log/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/lwip/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/mbedtls/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/mdns/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/mqtt/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/newlib/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/openssl/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/pthread/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/spiffs/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/tcpip_adapter/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/vfs/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/wear_levelling/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/wifi_provisioning/Kconfig\ /home/trent/esp/ESP8266_RTOS_SDK/components/wpa_supplicant/Kconfig COMPONENT_KCONFIGS_PROJBUILD=/home/trent/esp/ESP8266_RTOS_SDK/components/bootloader/Kconfig.projbuild\ /home/trent/esp/ESP8266_RTOS_SDK/components/esptool_py/Kconfig.projbuild\ /home/trent/esp/ESP8266_RTOS_SDK/components/partition_table/Kconfig.projbuild IDF_CMAKE=y KCONFIG_CONFIG=/home/trent/trent-workspace/ECNG3006-LAB1/hello_world/sdkconfig IDF_TARGET=esp8266 /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build/kconfig_bin/mconf-idf /home/trent/esp/ESP8266_RTOS_SDK/Kconfig
	python /home/trent/esp/ESP8266_RTOS_SDK/tools/kconfig_new/confgen.py --kconfig /home/trent/esp/ESP8266_RTOS_SDK/Kconfig --config /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/sdkconfig --env-file /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build/config.env --env IDF_TARGET=esp8266 --output config /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/trent/trent-workspace/ECNG3006-LAB1/hello_world /home/trent/trent-workspace/ECNG3006-LAB1/hello_world /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build /home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

