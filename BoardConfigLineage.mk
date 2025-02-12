#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true

# Kernel
TARGET_KERNEL_DTBO_PREFIX := dts/
TARGET_KERNEL_DTBO := google/devices/felix/dtbo.img
TARGET_KERNEL_DTB := \
    google/devices/felix/google-base/gs201-a0.dtb \
    google/devices/felix/google-base/gs201-b0.dtb

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat device/google/felix/vendor_dlkm.modules.load))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(foreach m,$(BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW),$(notdir $(m)))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat device/google/felix/vendor_kernel_boot.modules.load))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(foreach m,$(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD_RAW),$(notdir $(m)))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)

TARGET_KERNEL_EXT_MODULES := \
    amplifiers/audiometrics \
    amplifiers/cs35l41 \
    amplifiers/cs35l45 \
    amplifiers/cs40l26 \
    amplifiers/drv2624 \
    aoc \
    aoc/alsa \
    aoc/usb \
    bluetooth/broadcom \
    bms \
    display/samsung \
    edgetpu/janeiro/drivers/edgetpu \
    fingerprint/fpc \
    gpu/mali_kbase \
    gpu/mali_pixel \
    gxp/gs201 \
    lwis \
    nfc \
    power/reset \
    sensors/hall_sensor \
    touch/common \
    uwb/kernel \
    video/gchips \
    wlan/bcmdhd4389 \
    wlan/wlan_ptracker \
    ../devices/google/felix/display \
    ../devices/google/felix/touch/fst2 \
    ../devices/google/felix/touch/ftm5
