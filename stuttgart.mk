#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_BASEDIR=device/lenovo/stuttgart

# overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_BASEDIR)/overlay

# UTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot: root dir
PRODUCT_COPY_FILES := \
    $(LOCAL_BASEDIR)/rootdir/gpio:root/sbin/gpio \
    $(LOCAL_BASEDIR)/rootdir/busybox:root/sbin/busybox \
    $(LOCAL_BASEDIR)/rootdir/init.rc:root/init.rc \
    $(LOCAL_BASEDIR)/rootdir/init.stuttgart.rc:root/init.stuttgart.rc \
    $(LOCAL_BASEDIR)/rootdir/init.stuttgart.usb.rc:root/init.stuttgart.usb.rc \
    $(LOCAL_BASEDIR)/rootdir/init.testmode.rc:root/init.testmode.rc \
    $(LOCAL_BASEDIR)/rootdir/init.cp_update.rc:root/init.cp_update.rc \
    $(LOCAL_BASEDIR)/rootdir/init.trace.rc:root/init.trace.rc \
    $(LOCAL_BASEDIR)/rootdir/ueventd.stuttgart.rc:root/ueventd.stuttgart.rc

# Boot: vendor firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_BASEDIR)/rootdir/vendor/firmware/fimc_is_fw.bin:root/vendor/firmware/fimc_is_fw.bin \
    $(LOCAL_BASEDIR)/rootdir/vendor/firmware/mfc_fw.bin:root/vendor/firmware/mfc_fw.bin \
    $(LOCAL_BASEDIR)/rootdir/vendor/firmware/setfile.bin:root/vendor/firmware/setfile.bin \
    $(LOCAL_BASEDIR)/rootdir/vendor/firmware/setfile_S5K3H7.bin:root/vendor/firmware/setfile_S5K3H7.bin

# Boot: yma
PRODUCT_COPY_FILES += \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/0_2MIC_HS_NB.dat:root/ymc/param/0_2MIC_HS_NB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/0_2MICNSOFF_HS_NB.dat:root/ymc/param/0_2MICNSOFF_HS_NB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/1_1MIC_HF_NB.dat:root/ymc/param/1_1MIC_HF_NB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/2_2MIC_REC_WB.dat:root/ymc/param/2_2MIC_REC_WB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/3_1MIC_REC_NB.dat:root/ymc/param/3_1MIC_REC_NB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/3_1MIC_REC_WB.dat:root/ymc/param/3_1MIC_REC_WB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/4_1MIC_HES_NB.dat:root/ymc/param/4_1MIC_HES_NB.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/agc_off.dat:root/ymc/param/agc_off.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/dng_off.dat:root/ymc/param/dng_off.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/dsp_off.dat:root/ymc/param/dsp_off.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/dsp_through.dat:root/ymc/param/dsp_through.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/handsfree_1.dat:root/ymc/param/handsfree_1.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/handsfree_2.dat:root/ymc/param/handsfree_2.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/handsfree_off.dat:root/ymc/param/handsfree_off.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/Lenovo_S3_HP_effect.dat:root/ymc/param/Lenovo_S3_HP_effect.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/Lenovo_S3_SP_effect.dat:root/ymc/param/Lenovo_S3_SP_effect.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_0_HS_2MIC_NB_adc_agc.dat:root/ymc/param/YMach2_0_HS_2MIC_NB_adc_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_0_HS_2MIC_NB_dng.dat:root/ymc/param/YMach2_0_HS_2MIC_NB_dng.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_0_HS_2MIC_NB_pdm_agc.dat:root/ymc/param/YMach2_0_HS_2MIC_NB_pdm_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_1_HF_1MIC_NB_adc_agc.dat:root/ymc/param/YMach2_1_HF_1MIC_NB_adc_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_1_HF_1MIC_NB_dng.dat:root/ymc/param/YMach2_1_HF_1MIC_NB_dng.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_1_HF_1MIC_NB_pdm_agc.dat:root/ymc/param/YMach2_1_HF_1MIC_NB_pdm_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_2_REC_2MIC_WB_adc_agc.dat:root/ymc/param/YMach2_2_REC_2MIC_WB_adc_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_2_REC_2MIC_WB_dng.dat:root/ymc/param/YMach2_2_REC_2MIC_WB_dng.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_2_REC_2MIC_WB_pdm_agc.dat:root/ymc/param/YMach2_2_REC_2MIC_WB_pdm_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_3_REC_1MIC_NB_adc_agc.dat:root/ymc/param/YMach2_3_REC_1MIC_NB_adc_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_3_REC_1MIC_NB_dng.dat:root/ymc/param/YMach2_3_REC_1MIC_NB_dng.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_3_REC_1MIC_NB_pdm_agc.dat:root/ymc/param/YMach2_3_REC_1MIC_NB_pdm_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_4_HES_1MIC_NB_adc_agc.dat:root/ymc/param/YMach2_4_HES_1MIC_NB_adc_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_4_HES_1MIC_NB_dng.dat:root/ymc/param/YMach2_4_HES_1MIC_NB_dng.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/YMach2_4_HES_1MIC_NB_pdm_agc.dat:root/ymc/param/YMach2_4_HES_1MIC_NB_pdm_agc.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/dsp_through.dat:root/ymc/param/post_process/output/dsp_through.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/HP_Dance.dat:root/ymc/param/post_process/output/HP_Dance.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/HP_JazzBar.dat:root/ymc/param/post_process/output/HP_JazzBar.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/HP_Pop.dat:root/ymc/param/post_process/output/HP_Pop.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/output.xml:root/ymc/param/post_process/output/output.xml \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/SP_Dance.dat:root/ymc/param/post_process/output/SP_Dance.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/SP_JazzBar.dat:root/ymc/param/post_process/output/SP_JazzBar.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/post_process/output/SP_Pop.dat:root/ymc/param/post_process/output/SP_Pop.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/voice_process/1mic_off.dat:root/ymc/param/voice_process/1mic_off.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/voice_process/1mic_sample.dat:root/ymc/param/voice_process/1mic_sample.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/voice_process/2mic_off.dat:root/ymc/param/voice_process/2mic_off.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/voice_process/2mic_sample.dat:root/ymc/param/voice_process/2mic_sample.dat \
    $(LOCAL_BASEDIR)/rootdir/ymc/param/voice_process/voice_process.xml:root/ymc/param/voice_process/voice_process.xml

# Boot: default properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/lenovo/stuttgart/stuttgart-vendor.mk)
