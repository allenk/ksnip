#!/bin/bash

zypper --non-interactive install git cmake extra-cmake-modules patterns-openSUSE-devel_C_C++ libqt5-linguist-devel libqt5-qtx11extras-devel libqt5-qtdeclarative-devel libqt5-qtbase-devel rpm-build update-desktop-files

cd kColorPicker
mkdir build && cd build
cmake ..
make && sudo make install
cd ../..
cd kImageAnnotator
mkdir build && cd build
cmake ..
make && sudo make install
cd ../..

ls -al
cd ksnip-1.5.0
ls -al
rpmbuild -ba SPECS/ksnip-1.5.0.spec --define '_topdir %(pwd)'