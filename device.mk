#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# First api level, device has been commercially launched
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=24
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio
    
    # Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8952 \
    audio.r_submix.default \
    audio.usb.default \
    audio_amplifier.msm8952 \
    sound_trigger.primary.msm8916 \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/tfa9890/AAC/tct_btm.cnt:/system/etc/tfa9890/AAC/tct_btm.cnt \
    $(LOCAL_PATH)/audio/tfa9890/AAC/tct_top.cnt:/system/etc/tfa9890/AAC/tct_top.cnt \
    $(LOCAL_PATH)/audio/tfa9890/AAC/tct_stereo.cnt:/system/etc/tfa9890/AAC/tct_stereo.cnt \
    $(LOCAL_PATH)/audio/tfa9890/tct_btm.cnt:/system/etc/tfa9890/tct_btm.cnt \
    $(LOCAL_PATH)/audio/tfa9890/tct_top.cnt:/system/etc/tfa9890/tct_top.cnt \
    $(LOCAL_PATH)/audio/tfa9890/tct_stereo.cnt:/system/etc/tfa9890/tct_stereo.cnt \
    $(LOCAL_PATH)/audio/tfa9890/LC/tct_btm.cnt:/system/etc/tfa9890/LC/tct_btm.cnt \
    $(LOCAL_PATH)/audio/tfa9890/LC/tct_top.cnt:/system/etc/tfa9890/LC/tct_top.cnt \
    $(LOCAL_PATH)/audio/tfa9890/LC/tct_stereo.cnt:/system/etc/tfa9890/LC/tct_stereo.cnt \
    $(LOCAL_PATH)/configs/media/mixer_paths_mtp.xml:/system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:/system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:/system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:/system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/capability.xml:/system/etc/capability.xml
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/cneapiclient.xml:/system/etc/permissions/cneapiclient.xml \
    $(LOCAL_PATH)/configs/permissions/qcnvitems.xml:/system/etc/permissions/qcnvitems.xml \
    $(LOCAL_PATH)/configs/permissions/qcrilhook.xml:/system/etc/permissions/qcrilhook.xml \
    $(LOCAL_PATH)/configs/permissions/qti_permissions.xml:/system/etc/permissions/qti_permissions.xml \
    $(LOCAL_PATH)/configs/cne/andsfCne.xml:system/etc/cne/andsfCne.xml \
    $(LOCAL_PATH)/configs/cne/SwimConfig.xml:system/etc/cne/SwimConfig.xml
# Camera
PRODUCT_PACKAGES += \
    camera.msm8952

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := false

# Panel
PRODUCT_PACKAGES += \
    pp_calib_data_nt35596_1080p_video_mode_dsi_panel.xml \
    pp_calib_data_truly_1080p_video_mode_dsi_panel.xml \
    pp_calib_data_vm5296_1080p_video_mode_dsi_panel.xml

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.qcom.bt.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.wifi.sh \
    init.qti.ims.sh \
    init.target.rc \
    ueventd.qcom.rc

# IPACM
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm
    
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl
    
# Lights
PRODUCT_PACKAGES += \
    lights.msm8952

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:/system/etc/media_codecs.xml

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    nfc_nci.pn54x.default \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
# Factory reset protection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/config

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Camera
PRODUCT_PACKAGES += \
    Camera2

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    cneapiclient \
    com.quicinc.cne \
    services-ext

# Display
PRODUCT_PACKAGES += \
    copybit.msm8952 \
    gralloc.msm8952 \
    hwcomposer.msm8952 \
    lights.msm8952 \
    memtrack.msm8952 \
    liboverlay \
    libtinyxml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GPS
PRODUCT_PACKAGES += \
    gps.msm8952

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/xtwifi.conf:system/etc/xtwifi.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8952

# Media
PRODUCT_PACKAGES += \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

ifneq ($(QCPATH),)
PRODUCT_PACKAGES += \
    libOmxVdecHevc
endif

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8952

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.disableWifiApFirmwareReload=true \
    wifi.interface=wlan0

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    wcnss_service

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wcnss/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wcnss/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wcnss/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wcnss/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wcnss/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wcnss/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

# Recovery Script
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8952

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:system/etc/sensors/hals.conf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Firmware
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/touch/ft_fw.bin:system/etc/firmware/ft_fw.bin

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.usb.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

$(call inherit-product, vendor/alcatel/idol4/idol4-vendor.mk)
