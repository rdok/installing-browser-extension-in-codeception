<?php
$I = new AcceptanceTester($scenario);

$I->wantTo('make sure ad blocker is installed.');

$I->wait(5);

$I->openNewTab();

$I->amOnUrl('http://www.detectadblock.com/');

$I->wait(99);

$I->see('You\'re blocking ads');
