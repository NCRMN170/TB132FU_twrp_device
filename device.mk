LOCAL_PATH := device/lenovo/TB132FU

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# API
PRODUCT_SHIPPING_API_LEVEL := 31

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31

#AVB
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)



PRODUCT_USE_DYNAMIC_PARTITIONS := true


# Virtual A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_retrofit.mk)



# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Update Engine & Update Verifier 
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier \
    update_engine_sideload

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh

PRODUCT_PACKAGES += \
    dmctl \
    dmsetup
    
PRODUCT_PACKAGES_DEBUG += \
    update_engine_client    



# Filesystem repair in recovery
PRODUCT_PACKAGES += e2fsck_ramdisk



# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery    

PRODUCT_PACKAGES += mtk_plpath_utils.recovery



# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd
    



 



    
    
    
   
    
    
