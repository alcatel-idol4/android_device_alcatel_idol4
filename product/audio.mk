# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix

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
