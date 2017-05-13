<?php

namespace Helper;

use Codeception\Module\WebDriver;
use Facebook\WebDriver\Firefox\FirefoxDriver;
use Facebook\WebDriver\Firefox\FirefoxProfile;
use Facebook\WebDriver\Remote\DesiredCapabilities;

class FirefoxHelper extends WebDriver
{
    public function _initialize()
    {
        parent::_initialize();

        $profile = new FirefoxProfile();
        $profile->addExtension('tests/_data/adblock-plus.xpi');

        $capabilities = DesiredCapabilities::firefox();
        $capabilities->setCapability(FirefoxDriver::PROFILE, $profile);

        $this->capabilities = $capabilities;
    }
}
