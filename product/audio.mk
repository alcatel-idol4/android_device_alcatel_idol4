# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/tfa9897/AAC/seltech_bottom.cnt:/system/etc/tfa9897/AAC/seltech_bottom.cnt \
    $(LOCAL_PATH)/audio/tfa9897/AAC/seltech_stereo.cnt:/system/etc/tfa9897/AAC/seltech_stereo.cnt \
    $(LOCAL_PATH)/audio/tfa9897/AAC/seltech_top.cnt:/system/etc/tfa9897/AAC/seltech_top.cnt \
    $(LOCAL_PATH)/audio/tfa9897/seltech_bottom.ini:/system/etc/tfa9897/seltech_bottom.ini \
    $(LOCAL_PATH)/audio/tfa9897/seltech_bottom.cnt:/system/etc/tfa9897/seltech_bottom.cnt \
    $(LOCAL_PATH)/audio/tfa9897/seltech_stereo.cnt:/system/etc/tfa9897/seltech_stereo.cnt \
    $(LOCAL_PATH)/audio/:tfa9897/seltech_top.cnt/system/etc/tfa9897/seltech_top.cnt \
    $(LOCAL_PATH)/audio/tfa9897/seltech_top.ini:/system/etc/tfa9897/seltech_top.ini \
    $(LOCAL_PATH)/audio/tfa9897/seltech_stereo.ini:/system/etc/tfa9897/seltech_stereo.ini \
    $(LOCAL_PATH)/audio/tfa9897/LC/seltech_bottom.cnt:/system/etc/tfa9897/LC/seltech_bottom.cnt \
    $(LOCAL_PATH)/audio/tfa9897/LC/seltech_stereo.cnt:/system/etc/tfa9897/LC/seltech_stereo.cnt \
    $(LOCAL_PATH)/audio/tfa9897/LC/seltech_top.cnt:/system/etc/tfa9897/LC/seltech_top.cnt
