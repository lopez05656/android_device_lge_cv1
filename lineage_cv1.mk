#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lv517 device
$(call inherit-product, device/lge/cv1/device.mk)

BOARD_VENDOR := lge
PRODUCT_DEVICE := cv1
PRODUCT_NAME := lineage_cv1
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-X210
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := cv1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="cv1" \
    PRODUCT_NAME="cv1" \
    PRIVATE_BUILD_DESC="cv1_lao_com-user 9 N2G47H 180391525b535 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "lge/cv1_lao_com/cv1:9/N2G47H/180391525b535:user/release-keys"
