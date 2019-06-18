# Audio
PRODUCT_PACKAGES += \
    audio_amplifier.msm8952 \
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
    $(LOCAL_PATH)/configs/mixer_paths_mtp.xml:/system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:/system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:/system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:/system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:/system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:/system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:/system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/capability.xml:/system/etc/capability.xml
