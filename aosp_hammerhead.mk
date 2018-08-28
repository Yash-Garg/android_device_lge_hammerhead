#
# Copyright 2013 The Android Open-Source Project
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

# For off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_PACKAGES += \
    Terminal \
    WallpaperPicker \
    Launcher3

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# CM-specific overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/hammerhead/overlay/cm

# Build Flags
TARGET_UNOFFICIAL_BUILD_ID := N5
KBUILD_BUILD_USER := YashGarg
KBUILD_BUILD_HOST := RaspberryPI

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := aosp_hammerhead
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
