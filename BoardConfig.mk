USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/stuttgart/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := stuttgart

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 20940800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20940800
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2621440000
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_PREBUILT_KERNEL := device/lenovo/stuttgart/kernel

TARGET_NO_BOOTLOADER := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"

# recovery
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/stuttgart/shbootimg.mk
TARGET_RECOVERY_INITRC := device/lenovo/stuttgart/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/lenovo/stuttgart/recovery/griphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_UMS_LUNFILE := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"
