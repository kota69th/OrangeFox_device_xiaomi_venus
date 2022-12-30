
#    ____                              ______              __                              
#   / __ \_________ _____  ____ ____  / ____/___  _  __   / /  _   _____  ____  __  _______
#  / / / / ___/ __ `/ __ \/ __ `/ _ \/ /_  / __ \| |/_/  / /  | | / / _ \/ __ \/ / / / ___/
# / /_/ / /  / /_/ / / / / /_/ /  __/ __/ / /_/ />  <   / /   | |/ /  __/ / / / /_/ (__  ) 
# \____/_/   \__,_/_/ /_/\__, /\___/_/    \____/_/|_|  / /    |___/\___/_/ /_/\__,_/____/  
#                       /____/                        /_/                                  
#
# OrangeFox DT for Xiaomi Mi 11 by kota.
# Currently : Rev.6 | Unofficial
#
# Device Name : Xiaomi Mi 11 | Device Codename : venus | Device Model : M2011K2G
# The Xiaomi Mi 11 was announced in December 2020 and released globally on February 2021
#

# Call Mi 11's setup phase.
$(call inherit-product, device/xiaomi/venus/device.mk)

# Call OrangeFox's assets.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier.
PRODUCT_NAME :=twrp_venus
PRODUCT_DEVICE := venus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
