#!/usr/bin/env bash
tools/esptool.py --chip esp32 --port $1 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_freq 80m --flash_mode dio --flash_size 4MB \
0x1000 firmware/bootloader.bin \
0x8000  firmware/partitions.bin \
0xe000  firmware/boot_app0.bin \
0x10000  firmware/firmware.bin \
0x291000 firmware/spiffs.bin
#sudo cu -l $1 -s 115200
