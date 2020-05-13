DEVICE_PACKAGE_OVERLAYS := device/qcom/msm8952_64/overlay

TARGET_USES_QCOM_BSP := true
# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_USES_NQ_NFC := false
TARGET_USES_IMS := false

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

# Enable features in video HAL that can compile only on this platform
TARGET_USES_MEDIA_EXTENSIONS := true

# media_profiles and media_codecs xmls for msm8952
ifeq ($(TARGET_ENABLE_QC_AV_ENHANCEMENTS), true)
PRODUCT_COPY_FILES += device/qcom/msm8952_32/media/media_profiles_8952.xml:system/etc/media_profiles.xml \
                      device/qcom/msm8952_32/media/media_profiles_8956.xml:system/etc/media_profiles_8956.xml \
                      device/qcom/msm8952_32/media/media_codecs_8952.xml:system/etc/media_codecs.xml \
                      device/qcom/msm8952_32/media/media_codecs_8956.xml:system/etc/media_codecs_8956.xml \
                      device/qcom/msm8952_32/media/media_codecs_performance_8952.xml:system/etc/media_codecs_performance.xml \
                      device/qcom/msm8952_32/media/media_codecs_performance_8956.xml:system/etc/media_codecs_performance_8956.xml \
                      device/qcom/msm8952_32/media/media_codecs_8956_v1.xml:system/etc/media_codecs_8956_v1.xml \
                      device/qcom/msm8952_32/media/media_codecs_performance_8956_v1.xml:system/etc/media_codecs_performance_8956_v1.xml
endif

PRODUCT_COPY_FILES += device/qcom/msm8952_64/whitelistedapps.xml:system/etc/whitelistedapps.xml

PRODUCT_PROPERTY_OVERRIDES += \
           dalvik.vm.heapminfree=4m \
           dalvik.vm.heapstartsize=16m
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/qcom/common/common64.mk)

PRODUCT_NAME := msm8952_64
PRODUCT_DEVICE := msm8952_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := msm8976 for arm64

PRODUCT_BOOT_JARS += tcmiface
# This jar is needed for MSIM manual provisioning and for other
# telephony related functionalities to work.
PRODUCT_BOOT_JARS += telephony-ext

PRODUCT_PACKAGES += telephony-ext
ifneq ($(strip $(QCPATH)),)
#PRODUCT_BOOT_JARS += com.qti.dpmframework
#PRODUCT_BOOT_JARS += dpmapi
PRODUCT_BOOT_JARS += WfdCommon
#Android oem shutdown hook
PRODUCT_BOOT_JARS += oem-services
#PRODUCT_BOOT_JARS += com.qti.location.sdk
endif

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

# When can normal compile this module,  need module owner enable below commands
# font rendering engine feature switch
-include $(QCPATH)/common/config/rendering-engine.mk
ifneq (,$(strip $(wildcard $(PRODUCT_RENDERING_ENGINE_REVLIB))))
    MULTI_LANG_ENGINE := REVERIE
#    MULTI_LANG_ZAWGYI := REVERIE
endif

PRODUCT_BOOT_JARS += qcmediaplayer


#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

PRODUCT_BOOT_JARS += \
           qcom.fmradio

# Audio configuration file
-include $(TOPDIR)hardware/qcom/audio/configs/msm8952_64/msm8952_64.mk

# MIDI feature
   PRODUCT_COPY_FILES += \
       frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

#ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

PRODUCT_PACKAGES += wcnss_service

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    device/qcom/msm8952_64/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
    device/qcom/msm8952_64/msm_irqbalance_little_big.conf:system/vendor/etc/msm_irqbalance_little_big.conf

#wlan driver
PRODUCT_COPY_FILES += \
    device/qcom/msm8952_64/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/qcom/msm8952_32/WCNSS_wlan_dictionary.dat:persist/WCNSS_wlan_dictionary.dat \
    device/qcom/msm8952_64/WCNSS_qcom_wlan_nv.bin:persist/WCNSS_qcom_wlan_nv.bin

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf


# Feature definition files for msm8952
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml


# Defined the locales
PRODUCT_LOCALES += th_TH vi_VN tl_PH hi_IN ar_EG ru_RU tr_TR pt_BR bn_IN mr_IN ta_IN te_IN zh_HK \
        in_ID my_MM km_KH sw_KE uk_UA pl_PL sr_RS sl_SI fa_IR kn_IN ml_IN ur_IN gu_IN or_IN zh_CN

# When can normal compile this module, need module owner enable below commands
# Add the overlay path

PRODUCT_PACKAGE_OVERLAYS := $(QCPATH)/qrdplus/Extension/res \
       $(QCPATH)/qrdplus/globalization/multi-language/res-overlay \
       $(PRODUCT_PACKAGE_OVERLAYS)

# Sensor HAL conf file
 PRODUCT_COPY_FILES += \
     device/qcom/msm8952_64/sensors/hals.conf:system/etc/sensors/hals.conf

PRODUCT_SUPPORTS_VERITY := false

#for android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml
