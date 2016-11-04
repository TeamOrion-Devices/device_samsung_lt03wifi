#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/n1awifi

# inherit from the proprietary version
 include vendor/samsung/n1awifi/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos5420

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := lt033g,lt03wifi,lt03wifiue,n1awifi

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_deathly_n1awifi_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-cortex_a15-linux-gnueabihf-linaro_4.9/bin

# Rom Toolchain
TARGET_GCC_VERSION_EXP := 4.9

# IR Blaster
IR_HAS_ONE_FREQ_RANGE := true

# Hardware
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#HAX: real block size is too small to build a ROM
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2524971008
# 12863930368 - 16384 <encryption footer>
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12863913984
BOARD_FLASH_BLOCK_SIZE := 4096

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/exynos5420-common/sepolicy

# Inherit from exynos5420-common
include device/samsung/exynos5420-common/BoardConfigCommon.mk