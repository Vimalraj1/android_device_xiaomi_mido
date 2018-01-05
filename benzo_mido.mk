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

DEVICE_PATH := device/xiaomi/mido

# Release name
PRODUCT_RELEASE_NAME := PixelXL

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/mido/full_mido.mk)

# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

# Call QCOM Utils
$(call inherit-product, $(DEVICE_PATH)/utils.mk)

PRODUCT_NAME := benzo_mido
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="xiaomi/mido/mido:7.0/NRD90M/V8.5.4.0.NCFMIED:user/release-keys" \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V8.5.4.0.NCFMIED release-keys"
