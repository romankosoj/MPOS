#!/usr/bin/php
<?php

// Change to working directory
chdir(dirname(__FILE__));

// Include all settings and classes
require_once('shared.inc.php');

// Check For RPC Connection
if ($bitcoin->can_connect() === true){
$dBalance = $bitcoin->getbalance();

// Check Wallet Balance
$log->logDebug("The wallet balance is " .$dBalance. "");
$dGetInfo = $bitcoin->getinfo();

// Check for POS Mint
if (is_array($dGetInfo) && array_key_exists('newmint', $dGetInfo)) {
$dNewmint = $dGetInfo['newmint'];
$log->logDebug("Current mint is: " .$dNewmint );
} else {
  $dNewmint = -1;
}
} else {
  $dBalance = 0;
  $dNewmint = -1;
  $log->logError('Unable to connect to wallet RPC service');
}

// Fetch locked balance from transactions
$dLockedBalance = $transaction->getLockedBalance();
$log->logDebug("The locked wallet balance for users is: " .$dLockedBalance. "");

// Fetch Final Wallet Balance after Transfer
$dFloat = $dLockedBalance + $config['coldwallet']['reserve'];
$dThreshold = $config['coldwallet']['threshold'];
$sendAddress = $config['coldwallet']['address'];
$log->logDebug("The locked wallet balance and float amounts to: " .$dFloat. "");

// Send Liquid Balance
$send = $dBalance - $dFloat ;
$log->logInfo("Liquid amount : " .$send. "");
if($send > $dThreshold){
        if($sendAddress !== ''){
                $bitcoin->sendtoaddress($sendAddress, $send);
        }
        else {
                $log->logInfo("No wallet address set");
        }
}
else{
        $log->logInfo("Liquid amount does not exceed the set threshold : " .$send. "");
}

// Monitoring cleanup and status update
$monitoring->endCronjob($cron_name, 'OK', 0, false, false);
$monitoring->setStatus($cron_name . "_runtime", "time", microtime(true) - $cron_start[$cron_name]);
$monitoring->setStatus($cron_name . "_endtime", "date", time());
