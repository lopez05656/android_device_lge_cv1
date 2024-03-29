#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/halium.mk)

# Inherit from cv1 device
$(call inherit-product, device/lge/cv1/device.mk)

# Inherit some common LineageOS stuff.
# $(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := lge
PRODUCT_DEVICE := cv1
PRODUCT_NAME := lineage_cv1
PRODUCT_BRAND := lge
PRODUCT_MODEL := LMX212TA
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="T-Mobile/cv1_tmo_us/cv1:9/NRD90U/171071514d722:user/release-keys" \
    PRIVATE_BUILD_DESC="cv1_tmo_us-user 9 NRD90U 171071514d722 release-keys"