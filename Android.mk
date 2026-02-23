

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),TB132FU)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif



