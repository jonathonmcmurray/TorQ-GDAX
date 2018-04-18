.proc.loadprocesscode:1b

\d .servers
enabled:1b
CONNECTIONS:enlist`tickerplant

\d .gdax

/ setup initial subscriptions for GDAX feed
subs:()!()
subs[`]     :`$("BTC-GBP";"ETH-USD")
subs[`trade]:`$("BCH-USD")
subs[`depth]:`$("ETH-GBP")
