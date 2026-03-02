#!/bin/bash

echo "Applying frameworks/native patch"
cd frameworks/native
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
git cherry-pick 366c673b57b640d81d7a79801d8bd359df4cb1f8
git cherry-pick 1f9157df9aaba97d0ed6be1f7f657aa1939c9225
cd ../..

echo "Clonning IMS"
git clone https://github.com/techyminati/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Applying frameworks/base patch"
cd frameworks/base
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_base.git
git cherry-pick 2f559990e06c6c2254d88ab3d3549fc8b1a8ba82
cd ../..
