# Monitor network traffic and get notified when an FQDN is resolved
> In association with the YouTube video tutorial, [here](https://youtu.be/lJP3w7YJsXo).



Written in BASH, this script allows you to monitor network traffic on your UNIX based system and get notified when a user resolves the FQDN specified.

> It's worth noting that this script makes a fair amount of assumptions about your network and the purview of this script itself. It is assumed that DHCP leases are not being used. A future iteration may include binding MAC addresses to variables in-memory.

## How to run:

1. Navigate (as **root**) to the working directory where this script is located.
2. ```apt install tcpdump -y && apt install tcpick -y```
3. ```mv tutorial.sh /root/```
4. ```chmod +x /root/tutorial.sh```
5. ```mv tutorial.service /etc/systemd/system/```
6. ```systemctl enable tutorial.service```
7. ```systemctl restart tutorial.service && systemctl status tutorial.service```
