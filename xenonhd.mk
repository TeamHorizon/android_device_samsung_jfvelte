# Release name
PRODUCT_RELEASE_NAME := jfvelte

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/samsung/jfvelte/full_jfvelte.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := 
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfvelte
PRODUCT_NAME := xenonhd_jfvelte
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9515

# Device Maintainer
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer="BenLue"
TARGET_VENDOR := 

# Root options
ROOT_METHOD=su
# Without any of these flags the builds will be unrooted and won't include Adaway & KernelAdiutor

# 3rd party apps - choose which you want to build
PRODUCT_PACKAGES += \
    Adaway \
    KernelAdiutor \
    MiXplorer
    
# Camera
PRODUCT_PACKAGES += \
  Camera2 \
  Snap

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfvelte \
  TARGET_DEVICE=jfvelte \
  BUILD_FINGERPRINT=samsung/jfvelte/jfvelte:7.1.2/N2G470/I9515XXU1BPK3:user/release-keys \
  PRIVATE_BUILD_DESC="jfvelte-user 7.1.2 N2G470 I9515XXU1BPK3 release-keys"
endif
