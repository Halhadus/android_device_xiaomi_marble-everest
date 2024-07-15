echo 'Hello! we need to clone stuffs needed for your device, please wait tll process complete'

echo 'Nuke Source stuffs'
	rm -rf hardware/qcom-caf/sm8450/display
	rm -rf hardware/xiaomi

echo 'Cloning Basic Call Recorder Tree'
	git clone https://github.com/xiaomi-sm8450-marble/android_vendor_bcr -b ursa vendor/bcr

echo 'Cloning Device Common Tree'
	git clone https://github.com/xiaomi-sm8450-marble/android_device_xiaomi_sm8450-common -b ursa device/xiaomi/sm8450-common

echo 'Cloning MemeCamera Tree'
	git clone https://github.com/Chaitanyakm/device_xiaomi_miuicamera-marble.git -b fourteen device/xiaomi/miuicamera-marble
	git clone https://gitlab.com/Chaitanyakm/vendor_xiaomi_miuicamera-marble.git -b fourteen vendor/xiaomi/miuicamera-marble
        rm -rf vendor/xiaomi/miuicamera-marble/proprietary/system/lib64/libcamera_algoup_jni.xiaomi.so
        curl https://bitbucket.org/evo-x/vendor_xiaomi_miuicamera-marble/raw/7958b85c535c1c2e84be17c9e9025a86f2f81f13/proprietary/system/lib64/libcamera_algoup_jni.xiaomi.so -o vendor/xiaomi/miuicamera-marble/proprietary/system/lib64/libcamera_algoup_jni.xiaomi.so

echo 'Cloning Hardware Display Tree'
	git clone https://github.com/xiaomi-sm8450-marble/android_hardware_qcom_display -b ursa hardware/qcom-caf/sm8450/display

echo 'Cloning Hardware Xiaomi Tree'
	git clone https://github.com/xiaomi-sm8450-marble/android_hardware_xiaomi -b ursa hardware/xiaomi

echo 'Cloning Kernel Tree'
	git clone --depth=1 https://github.com/Halhadus/android_kernel_xiaomi_sm8450 -b lindroid-21 kernel/xiaomi/sm8450
	git clone --depth=1 https://github.com/cupid-development/android_kernel_xiaomi_sm8450-modules -b lineage-21 kernel/xiaomi/sm8450-modules
	git clone --depth=1 https://github.com/cupid-development/android_kernel_xiaomi_sm8450-devicetrees -b lineage-21 kernel/xiaomi/sm8450-devicetrees

echo 'Cloning Vendor Tree'
	git clone https://github.com/xiaomi-sm8450-marble/android_vendor_xiaomi_marble -b ursa vendor/xiaomi/marble

echo 'Cloning Vendor Common Tree'
	git clone https://github.com/xiaomi-sm8450-marble/android_vendor_xiaomi_sm8450-common -b ursa vendor/xiaomi/sm8450-common

echo 'Cloning Vendor Everest Signing Keys'
        git clone https://github.com/xiaomi-sm8450-marble/android_vendor_everest_signing_keys -b ursa vendor/everest/signing/keys

echo 'Fix kernel/configs'
        rm kernel/configs/s/android-5.10/android-base.config
	curl https://raw.githubusercontent.com/Halhadus/android_kernel_configs/patch-marble/s/android-5.10/android-base.config -o kernel/configs/s/android-5.10/android-base.config
        rm kernel/configs/s/android-5.10/android-recommended.config
	curl https://raw.githubusercontent.com/Halhadus/android_kernel_configs/patch-marble/s/android-5.10/android-base.config -o kernel/configs/s/android-5.10/android-recommended.config

echo 'Cloninig Lindroid stuffs'
        git clone https://github.com/Linux-on-droid/vendor_lindroid.git -b lindroid-21 vendor/lindroid
	git clone https://github.com/Linux-on-droid/libhybris.git -b staging/lindroid-21 libhybris
        git clone https://github.com/Linux-on-droid/external_lxc.git -b lindroid-21 external/lxc
