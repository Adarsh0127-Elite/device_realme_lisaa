#!/bin/bash

echo "Applying frameworks/native patches"
cd frameworks/native
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
echo "Applying Fix the udfps dimlayer on MediaTek HWComposer"
git cherry-pick d646c72c82490895157fe8ab114d643373ef8ab9
echo "Applying Add MTK GED KPI support to fix broken Mediatek gpufreq"
git cherry-pick c531158afccf62c0b7d0c62e88939fd45b46aac0
cd ../..

echo "Clonning IMS"
git clone https://github.com/techyminati/android_vendor_mediatek_ims.git vendor/mediatek/ims
