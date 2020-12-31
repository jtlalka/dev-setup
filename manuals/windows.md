### Windows

Commands:
```
ping <IP address>               -- ping address
tracert <IP address>            -- show trace route
route add <network> <gateway>   -- add routing
route print                     -- print routing table
ipconfig /all                   -- IP configurations
```

Routing:
```
route -p add <network> mask <mask> <gateway> METRIC <number> IF <interface number>
route -p add 175.28.231.0  mask  255.255.255.0   175.28.239.254   METRIC 1 IF 20
```
