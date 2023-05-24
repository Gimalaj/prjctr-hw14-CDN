$TTL 86400
@   IN  SOA ns1.example.com. admin.example.com. (
            2019051901  ; Serial
            3600        ; Refresh
            1800        ; Retry
            604800      ; Expire
            86400       ; Minimum TTL
)

@       IN  NS  ns1.example.com.
@       IN  NS  ns2.example.com.

ns1     IN  A   192.168.1.10
ns2     IN  A   192.168.1.11

node1   IN  A   192.168.1.101
node2   IN  A   192.168.1.102
node3   IN  A   192.168.1.103
node4   IN  A   192.168.1.104

; Load balancers
@       IN  A   192.168.1.20 ; ns1
@       IN  A   192.168.1.21 ; ns2
