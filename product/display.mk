# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

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
