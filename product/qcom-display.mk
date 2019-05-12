# Display
PRODUCT_PACKAGES += \
    copybit.msm8952 \
    gralloc.mmsm8952 \
    hwcomposer.msm8952 \
    libtinyxml \
    memtrack.msm8952

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.enable.sglscale=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    ro.opengles.version=196609 \
    ro.qualcomm.cabl=2
