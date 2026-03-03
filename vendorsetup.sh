#!/bin/bash

echo "Applying frameworks/native patches"
cd frameworks/native
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
echo "Applying Add dither logic for MediaTek udfps optical devices"
git cherry-pick e9d50f8fdd2e9306975ddef2b9040d9e6767ba92
echo "Applying Add MTK GED KPI support to fix broken Mediatek gpufreq"
git cherry-pick 6ce4df082635588c63b387ee7121ff4b5b3643bd
cd ../..

echo "Applying frameworks/base patches"
cd frameworks/base
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_base.git
echo "Applying SystemUI Reverse MediaTek udfps dimlayer changes"
git cherry-pick dbc14f5c4adfd55959f4fda6af924206352b263e
cd ../..

echo "Clonning IMS"
git clone https://github.com/techyminati/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Clonning Private keys"
git clone https://github.com/Adarsh0127-Elite/android_vendor_lineage-priv_keys-template.git -b master vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
echo "no" | ./generate.sh
cd ../../..
