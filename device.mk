# Copyright 2014 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/sumire/overlay

PRODUCT_COPY_FILES := \
    device/sony/sumire/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/sony/sumire/rootdir/system/etc/BCM4356.hcd:system/etc/firmware/BCM43xx.hcd \
    device/sony/sumire/rootdir/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/sony/sumire/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/sumire/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/sumire/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/sumire/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/sumire/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.sumire \
    init.sumire \
    ueventd.sumire

# Lights
PRODUCT_PACKAGES += \
    lights.sumire

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.sumire

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.sumire

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1D9

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/kitakami/platform.mk)
$(call inherit-product, vendor/sony/sumire/sumire-vendor.mk)
