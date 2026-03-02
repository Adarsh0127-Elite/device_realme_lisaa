#!/bin/bash

echo "Applying frameworks/native patch 1"
cd frameworks/native
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
git cherry-pick 366c673b57b640d81d7a79801d8bd359df4cb1f8
cd ../..

echo "Applying frameworks/native patch 2"
cd frameworks/native
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
git cherry-pick 1f9157df9aaba97d0ed6be1f7f657aa1939c9225
cd ../..
