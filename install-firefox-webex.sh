#!/bin/sh 
sudo apt-get remove icedtea* firefox
sudo apt-get autoremove
sudo apt-get install firefox:i386 icedtea-7-plugin:i386 libxmu6:i386 libpangoxft-1.0-0:i386 libpangox-1.0-0:i386
# Optional
sudo update-alternatives --config mozilla-javaplugin.so 
