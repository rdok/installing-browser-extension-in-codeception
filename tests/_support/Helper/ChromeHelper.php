<?php

namespace Helper;

use Codeception\Module\WebDriver;
use Facebook\WebDriver\Chrome\ChromeOptions;
use Facebook\WebDriver\Remote\DesiredCapabilities;

class ChromeHelper extends WebDriver
{
    public function _initialize()
    {
        parent::_initialize();

//        $options = new ChromeOptions();
//        $options->addExtensions(['./tests/_data/adblock.crx',]);
//
//        $capabilities = DesiredCapabilities::chrome();
//        $capabilities->setCapability(ChromeOptions::CAPABILITY, $options);
//
//        $this->capabilities = $capabilities;
    }
}
