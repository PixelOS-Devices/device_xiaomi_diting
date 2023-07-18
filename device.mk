#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/diting/diting-vendor.mk)

# MiuiCamera
$(call inherit-product, vendor/xiaomi/camera/miuicamera.mk)

# Euicc
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Kernel
TARGET_KERNEL_DIR := $(LOCAL_PATH)-kernel
TARGET_BOARD_KERNEL_HEADERS := $(LOCAL_PATH)-kernel/kernel-headers

# Overlay
PRODUCT_PACKAGES += \
    ApertureResDiting \
    EuiccResDiting \
    FrameworksResDiting \
    NfcResDiting \
    SettingsProviderResDiting \
    SettingsProviderResDitingp \
    SettingsResDiting \
    SystemUIResDiting \
    WifiResDiting

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
