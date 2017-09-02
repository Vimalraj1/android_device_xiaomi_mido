#
# Copyright (C) 2017 The LineageOS Project
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

# Check for the target product.
ifeq (screwd_mido,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include Screwd common configuration
TARGET_BOOT_ANIMATION_RES := 1080

# Most advanced platform features, first.
TARGET_WANTS_EXTENDED_DPM_PLATFORM := true

# Inherit from our common CAF device tree.
include device/qcom/common/common.mk
$(call inherit-product, vendor/screwd/configs/caf_required.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)

include vendor/screwd/main.mk

# Device identifier. This must come after all inclusions
PRODUCT_NAME := screwd_mido
PRODUCT_DEVICE := mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="xiaomi/mido/mido:7.0/NRD90M/7.2.9:user/release-keys" \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M 7.2.9 release-keys"

TARGET_VENDOR := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.screwd.device.short=$(SCREWD_DEVICE_SHORT) \

endif
