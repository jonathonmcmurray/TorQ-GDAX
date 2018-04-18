/- use the discovery service to find the tickerplant to publish data to
.servers.startup[]
h:.servers.gethandlebytype[`tickerplant;`any]

.gdax.publish:{[t;x]                                                                //overwrite .gdax.publish to push to TP
  h(`.u.upd;t;value $[98=type x;flip;] `time`sym xcols x)                           //write to TP handle, rearrange as needed
 }

.gdax.sub[.gdax.h] .' reverse each raze key[.gdax.subs],/:'value[(),/:.gdax.subs];  //perfom initial subscriptions
