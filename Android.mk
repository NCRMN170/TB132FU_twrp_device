# SELinux policy ekleme
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),TB132FU)

# Diğer include’lar
include $(call all-subdir-makefiles,$(LOCAL_PATH))



#include $(CLEAR_VARS)
#SELINUX_POLICY_NAME := recovery_services
#SELINUX_POLICY_SRC := $(LOCAL_PATH)/sepolicy/recovery_services.te

#include $(BUILD_SEPOLICY)

endif

