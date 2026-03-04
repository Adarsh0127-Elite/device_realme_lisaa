#!/bin/bash

echo "Applying frameworks/native patches"
cd frameworks/native
echo "Applying Add MTK GED KPI support to fix broken Mediatek gpufreq"
git cherry-pick 6ce4df082635588c63b387ee7121ff4b5b3643bd
cd ../..

echo "Clonning IMS"
git clone https://github.com/techyminati/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Clonning Private keys"
git clone https://github.com/Adarsh0127-Elite/android_vendor_lineage-priv_keys-template.git -b master vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
echo "no" | ./generate.sh
cd ../../..
