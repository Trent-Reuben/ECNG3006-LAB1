# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# compile C with /home/trent/esp/xtensa-lx106-elf/bin/xtensa-lx106-elf-gcc
C_FLAGS = -mlongcalls -Wno-frame-address -g   -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v3.4-63-ga192988b\" -DGCC_NOT_5_2_0 -DESP_PLATFORM -Wno-unknown-pragmas

C_DEFINES = -DCONFIGURED -DCONFIG_SSL_USING_MBEDTLS -DHAVE_WEAK_SYMBOLS -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DNATIVE_LITTLE_ENDIAN -DUSING_IBUS_FASTER_GET -D__ESP_FILE__=__FILE__ -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS

C_INCLUDES = -I/home/trent/trent-workspace/ECNG3006-LAB1/hello_world/build/config -I/home/trent/esp/ESP8266_RTOS_SDK/components/libsodium/libsodium/src/libsodium/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/libsodium/port_include -I/home/trent/esp/ESP8266_RTOS_SDK/components/libsodium/libsodium/src/libsodium/include/sodium -I/home/trent/esp/ESP8266_RTOS_SDK/components/libsodium/port_include/sodium -I/home/trent/esp/ESP8266_RTOS_SDK/components/libsodium/port -I/home/trent/esp/ESP8266_RTOS_SDK/components/newlib/platform_include -I/home/trent/esp/ESP8266_RTOS_SDK/components/freertos/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/freertos/include/freertos -I/home/trent/esp/ESP8266_RTOS_SDK/components/freertos/include/freertos/private -I/home/trent/esp/ESP8266_RTOS_SDK/components/freertos/port/esp8266/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/freertos/port/esp8266/include/freertos -I/home/trent/esp/ESP8266_RTOS_SDK/components/heap/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/heap/port/esp8266/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/log/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/lwip/include/apps -I/home/trent/esp/ESP8266_RTOS_SDK/components/lwip/include/apps/sntp -I/home/trent/esp/ESP8266_RTOS_SDK/components/lwip/lwip/src/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/lwip/port/esp8266/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/lwip/port/esp8266/include/arch -I/home/trent/esp/ESP8266_RTOS_SDK/components/esp8266/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/esp8266/include/driver -I/home/trent/esp/ESP8266_RTOS_SDK/components/esp_common/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/esp_event/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/tcpip_adapter/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/vfs/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/tcp_transport/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/esp-tls/. -I/home/trent/esp/ESP8266_RTOS_SDK/components/mbedtls/port/include -I/home/trent/esp/ESP8266_RTOS_SDK/components/mbedtls/port/include/esp8266 -I/home/trent/esp/ESP8266_RTOS_SDK/components/mbedtls/mbedtls/include 

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/argon2/pwhash_argon2i.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphash24_ref.c.obj_FLAGS = -Wno-implicit-fallthrough

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphashx24_ref.c.obj_FLAGS = -Wno-implicit-fallthrough

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/randombytes/randombytes.c.obj_FLAGS = -DRANDOMBYTES_DEFAULT_IMPLEMENTATION

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/sodium/utils.c.obj_FLAGS = -Wno-unused-variable

