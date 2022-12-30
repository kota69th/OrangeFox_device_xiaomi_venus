#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/venus

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := venus

# OTA assert
TARGET_OTA_ASSERT_DEVICE := venus

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/venus
TARGET_KERNEL_CONFIG := vendor/venus-qgki_defconfig
TARGET_KERNEL_CLANG_VERSION := prelude
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-prelude/bin
KERNEL_SUPPORTS_LLVM_TOOLS := true

# Sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Kernel modules
BOOT_KERNEL_MODULES := \
    fts_touch_spi.ko \
    hwid.ko \
    xiaomi_touch.ko

BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114001162240

# Include proprietary files
-include vendor/xiaomi/venus/BoardConfigVendor.mk
