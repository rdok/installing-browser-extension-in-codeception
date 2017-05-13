#!/usr/bin/env bash

adBlockerFile="./tests/_data/adBlock"

if [ ! -d $adBlockerFile ]; then
    echo "Installing adblocker for chrome."

    adBlockerId=gighmmpiobklfepjocnamgkkbiglidom
    mkdir -p $adBlockerFile

    wget "https://clients2.google.com/service/update2/crx?response=redirect&os=mac&arch=x86-64&nacl_arch=x86-64&prod=chromecrx&prodchannel=stable&prodversion=44.0.2403.130&x=id%3D$adBlockerId%26uc" -O "$adBlockerId.zip"
    unzip -d $adBlockerFile "$adBlockerId.zip"
    rm  -f $adBlockerId.zip
fi

# Bug. See https://github.com/facebook/php-webdriver/wiki/ChromeOptions
#adBlockerFile="./tests/_data/adblock.crx"
#if [ ! -f $adBlockerFile ]; then
#    echo "Installing adblocker for chrome."
#    wget "http://chrome-extension-downloader.com/0f0a0fd3f78a6311a13b8c2529515ace/https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom.crx" -q -O $adBlockerFile
#    openssl base64 -in $adBlockerFile -out $adBlockerFile
#fi

adBlockerPlusFile="./tests/_data/adblock-plus.xpi"

if [ ! -f $adBlockerPlusFile ]; then
    echo "Installing adblocker plus for firefox."
    wget "https://addons.mozilla.org/firefox/downloads/latest/adblock-plus/addon-1865-latest.xpi" -O $adBlockerPlusFile
fi
