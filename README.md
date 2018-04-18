# TorQ-GDAX

A [GDAX API](https://docs.gdax.com/#websocket-feed) connector for the [TorQ](https://github.com/AquaQAnalytics/TorQ) framework

## Set Up 

Assuming that the [free 32 bit version of kdb+](http://kx.com/software-download.php) is already set up and available from the command prompt as q, then:

Clone this repo using the following command as well as [TorQ](https://github.com/AquaQAnalytics/TorQ)

```
git clone https://github.com/jonathonmcmurray/TorQ-Coinbase.git
```

Copy TorQ into a deployment directory, and then copy this package over the top

Configure environment variables as desired in setenv.sh and start_gdax.sh

Start up TorQ-GDAX package by executing the start_gdax.sh script

## Release Notes

- **0.1.0, April 2018**:
  * Initial release
