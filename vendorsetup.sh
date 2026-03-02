#!/bin/bash

echo "Applying frameworks/native patch"
cd frameworks/native
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
git cherry-pick 16d8742a8f54c1d2826d576581bef688ba4a8655
git cherry-pick 4f504aa24b143d3a6b4c21af114b9d733c975927
cd ../..

echo "Clonning IMS"
git clone https://github.com/techyminati/android_vendor_mediatek_ims.git vendor/mediatek/ims

