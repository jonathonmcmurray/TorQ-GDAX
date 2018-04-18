/- use the discovery service to find the tickerplant to publish data to
.servers.startup[]
h:.servers.gethandlebytype[`tickerplant;`any]

.gdax.publish:{[t;x]
  h(`.u.upd;t;value $[98=type x;flip;] `time`sym xcols x)
 }
