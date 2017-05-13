#!/usr/bin/env bash

chromeDriverFile='./chromedriver'
seleniumFile='selenium-server-standalone-3.4.0.jar'
firefoxFile='geckodriver'

if [ ! -f $chromeDriverFile ]; then
    echo 'Downloading chromedriver.'
    wget https://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip -q -O temp.zip; unzip temp.zip; rm temp.zip
fi

if [ ! -f $firefoxFile ]; then
    echo 'Downloading geckodriver.'
    temporaryFile=geckodriver.tar.gz
    wget https://github.com/mozilla/geckodriver/releases/download/v0.16.1/geckodriver-v0.16.1-linux64.tar.gz -q -O geckodriver.tar.gz $temporaryFile
    tar -xvzf $temporaryFile
    rm  $temporaryFile
fi

if [ ! -f $seleniumFile ]; then
    echo 'Downloading selenium server standalone. It might 1-2 minutes depending on your speed connection.'
    wget https://goo.gl/s4o9Vx -q -O $seleniumFile
fi

