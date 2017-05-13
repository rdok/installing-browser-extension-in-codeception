#!/usr/bin/env bash

adBlockerFile="./tests/_envs/chrome/AdBlock"

if [ ! -d $adBlockerFile ]; then
    echo "Installing chrome adblocker."

    adBlockerId=gighmmpiobklfepjocnamgkkbiglidom
    rm -rf $adBlockerFile
    mkdir -p $adBlockerFile

    wget "https://clients2.google.com/service/update2/crx?response=redirect&os=mac&arch=x86-64&nacl_arch=x86-64&prod=chromecrx&prodchannel=stable&prodversion=44.0.2403.130&x=id%3D$adBlockerId%26uc" -q -O "$adBlockerId.zip"
    unzip -d $adBlockerFile "$adBlockerId.zip"
    rm  -f $adBlockerId.zip
fi
