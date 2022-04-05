#!/usr/bin/env bash

# enable root
adb root

# remount filesystem so its no longer read only
adb remount

adb pull /system/build.prop
sd samsung htc build.prop
adb push build.prop /system

adb pull /system/vendor/build.prop
sd samsung htc build.prop
adb push build.prop /system/vendor

adb pull /system/vendor/odm/etc/build.prop
sd samsung htc build.prop
adb push build.prop /system/vendor/odm/etc

adb pull /system/product/build.prop
sd samsung htc build.prop
adb push build.prop /system/product/build.prop

adb pull /system/system_ext/build.prop
sd samsung htc build.prop
adb push build.prop /system/system_ext/build.prop

# Clean up
rm build.prop

# Yay!
echo "Done!"
