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
$log->logDebug("The Wallet Balance is " .$dBalance. "\n");
$dGetInfo = $bitcoin->getinfo();
// Check for POS Mint
if (is_array($dGetInfo) && array_key_exists('newmint', $dGetInfo)) {
$dNewmint = $dGetInfo['newmint'];
$log->logDebug("Current Mint is: " .$dNewmint);
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
$log->logDebug("The Locked Wallet Balance for Users is: " .$dLockedBalance. "\n");
// Fetch Final Wallet Balance after Transfer
$dFloat = $dLockedBalance + $config['coldwallet']['reserve'];
$dThreshold = $config['coldwallet']['threshold'];
$sendAddress = $config['coldwallet']['address'];
$log->logDebug("The Locked Wallet Balance & Float amounts to: " .$dFloat. "\n");
// Send Liquid Balance
$send = $dBalance - $dFloat ;
$log->logInfo("Final Sending Amount is : " .$send. "\n");
if($send > $dThreshold){
        if($sendAddress !== ''){
                $bitcoin->sendtoaddress($sendAddress, $send);
        }
        else {
                $log->logInfo("No wallet address set\n");
        }
}
else{
        $log->logInfo("Final Sending Amount Not Exceed threshold : " .$send. "\n");
}

// Monitoring cleanup and status update
$monitoring->endCronjob($cron_name, 'OK', 0, false, false);
$monitoring->setStatus($cron_name . "_runtime", "time", microtime(true) - $cron_start[$cron_name]);
$monitoring->setStatus($cron_name . "_endtime", "date", time());