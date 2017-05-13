<?php
$I = new AcceptanceTester($scenario);
$I->wantTo('make sure ad blocker is installed.');
$I->wait(10);
$I->openNewTab();
$I->amOnUrl('http://www.detectadblock.com/');
$I->wait(2);
$I->see('You\'re blocking ads');
