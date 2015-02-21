#!/bin/bash

rm -rf /hardware
cd vendor
rm -rf /samsung
cd ..
cd frameworks
rm -rf native
rm -rf av
cd ..
cd vendor
rm -rf /samsung
cd ..
cd /.repo/local_manifests/
rm -rf roomservice.xml
cd ../..
rm -rf /device
rm -rf /kernel
rm -rf /bionic
cp ~/home/ivanmeler/android/system/out/target/product/*/cm-12-*.zip ~/home/ivanmeler/out/
source build/envsetup.sh
make clean
cd /.repo/local_manifests/
cd ../..
repo sync
