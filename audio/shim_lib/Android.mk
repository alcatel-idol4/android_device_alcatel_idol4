LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	tfa9890.cpp

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libdl \
	libtfa9890

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE:= libtfa9890_shim
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
