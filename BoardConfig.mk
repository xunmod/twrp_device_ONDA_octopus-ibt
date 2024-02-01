# Some copied from https://github.com/neporood/twrp_TabletExpress_X10 (it's A83T)

LOCAL_PATH := device/ONDA/octopus-ibt

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true

BOARD_VENDOR := allwinner
TARGET_OTA_ASSERT_DEVICE := octopus-ibt
TARGET_BOARD_PLATFORM := octopus
TARGET_BOOTLOADER_BOARD_NAME := exdroid
TARGET_NO_BOOTLOADER := true

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 androidboot.hardware=sun8i vmalloc=384M ion_reserve=384M loglevel=4
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--base 0x40000000 \
	--pagesize 2048 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x01000000 \
	--tags_offset 0x00000100

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16384000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 32768000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2097152000
BOARD_CACHEIMAGE_PARTITION_SIZE := 786432000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

RECOVERY_SDCARD_ON_DATA := false
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab

TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := landscape_hdpi
LOCAL_RESOLUTION := 1280x720
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 720
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := false
TW_EXCLUDE_BASH := true
TW_EXCLUDE_TZDATA := true
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_FUSE_EXFAT := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NANO := true
TW_INCLUDE_SUPERSU := true
TW_DEFAULT_LANGUAGE := zh-CN
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# SELinux
TWHAVE_SELINUX := true
BOARD_SEPOLICY_DIRS += device/ONDA/octopus-ibt/sepolicy
BOARD_SEPOLICY_UNION += init.te
