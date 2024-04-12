#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

# Inherit from common lineage configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_diting
PRODUCT_DEVICE := diting
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22081212UG

PRODUCT_SYSTEM_NAME := diting_global
PRODUCT_SYSTEM_DEVICE := diting

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ditingp_global-user 12 SKQ1.230401.001 V816.0.3.0.ULFMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/ditingp_global/diting:12/SKQ1.230401.001/V816.0.3.0.ULFMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
