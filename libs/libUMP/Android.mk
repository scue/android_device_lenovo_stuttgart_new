ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),stuttgart)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libUMP
LOCAL_MODULE_OWNER := samsung
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES    := libUMP.so
include $(BUILD_PREBUILT)

endif
