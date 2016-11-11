<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <i class="fa fa-bookmark"></i> Welcome to TheCoin.pw {$SITECOINNAME|default:"Coin"} ({$GLOBAL.config.currency}) {if $GLOBAL.config.algorithm == 'sha256d'}SHA256{/if}{if $GLOBAL.config.algorithm == 'scrypt'}Scrypt{/if} mining pool!
                <br />
            </div>
            <div class="panel-body">
                <p><img src="favicon.ico" alt="{$SITECOINNAME|default:" Coin "}">
                    <p>Welcome to TheCoin.pw {$SITECOINNAME|default:"Coin"} ({$GLOBAL.config.currency}) {if $GLOBAL.config.algorithm == 'sha256d'}SHA256{/if}{if $GLOBAL.config.algorithm == 'scrypt'}Scrypt{/if} mining pool.</p>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> Pool Details
                        </div>
                        <div class="panel-body no-padding table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <tbody>
                                    <tr>
                                        <th>Payout System</th>
                                        <td>Proportional Payout</td>
                                    </tr>
                                    <tr>
                                        <th>Pool Fees</th>
                                        <td>0%</td>
                                    </tr>
                                    <tr>
                                        <th>Withdrawal Fee</th>
                                        <td>{$GLOBAL.config.txfee_manual} {$GLOBAL.config.currency}</td>
                                    </tr>
                                    <tr>
                                        <th>Difficulty Selections</th>
                                        <td>Automatic or Selectable (2 - 65536)</td>
                                    </tr>
                                    <tr>
                                        <th>Stratum Support</th>
                                        <td>Yes</td>
                                    </tr>
                                    <tr>
                                        <th>Payout Options</th>
                                        <td>Automatic or Manual</td>
                                    </tr>
                                    <tr>
                                        <th>Pool Infrastructure</th>
                                        <td>Solid State</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <br> {if $GLOBAL.config.algorithm == 'sha256d'}
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> Stratum Connection Details
                        </div>
                        <div class="panel-body no-padding table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <tbody>
                                    <tr>
                                        <td bgcolor="#666666"><font color="white"><strong>Mining Difficulty</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Stratum Connection String</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Miner Hashrate</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Automatic</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3630"}</td>
                                        <td>Any</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+1}</td>
                                        <td>0-15 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+2}</td>
                                        <td>16-31 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+3}</td>
                                        <td>32-63 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+4}</td>
                                        <td>64-127 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+5}</td>
                                        <td>128-255 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+6}</td>
                                        <td>256-511 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>512</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+7}</td>
                                        <td>512-1023 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>1024</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+8}</td>
                                        <td>1024-2047 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>2048</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+9}</td>
                                        <td>2048-4095 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>4096</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+10}</td>
                                        <td>4096-8191 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>8192</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+11}</td>
                                        <td>8192-16383 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16384</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+12}</td>
                                        <td>16384-32767 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32768</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+13}</td>
                                        <td>32768-65535 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>65536</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+14}</td>
                                        <td>> 65536 GH/s</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {/if} {if $GLOBAL.config.algorithm == 'scrypt'}
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> Stratum Connection Details
                        </div>
                        <div class="panel-body no-padding table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <tbody>
                                    <tr>
                                        <td bgcolor="#666666"><font color="white"><strong>Mining Difficulty</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Stratum Connection String</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Miner Hashrate</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Automatic</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3630"}</td>
                                        <td>Any</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+1}</td>
                                        <td>0-124 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+2}</td>
                                        <td>125-249 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+3}</td>
                                        <td>250-499 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+4}</td>
                                        <td>500-999 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+5}</td>
                                        <td>1-2 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+6}</td>
                                        <td>2-5 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>512</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+7}</td>
                                        <td>5-10 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>1024</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+8}</td>
                                        <td>10-25 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>2048</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+9}</td>
                                        <td>25-50 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>4096</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+10}</td>
                                        <td>50-100 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>8192</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+11}</td>
                                        <td>100-200 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16384</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+12}</td>
                                        <td>200-350 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32768</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+13}</td>
                                        <td>>350-550 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>65536</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+14}</td>
                                        <td>> 550 MH/s</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {/if}
                </p>
            </div>
        </div>
    </div>
</div>
{if $GLOBAL.website.newsstyle|default:"0" == 0} {include file="home/news_all.tpl"} {else} {include file="home/news_accordion.tpl"} {/if}
