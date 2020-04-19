#!/usr/bin/env bash
tools/esptool.py --chip esp32 --port $1 --baud 921600 read_flash 0x0000 0xffff firmware_back/bootloader.bin