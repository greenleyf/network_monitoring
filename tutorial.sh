#!/bin/bash

WEBHOOK="https://discord.com/api/webhooks/1183726035708149781/Fqb-vjgJZz9AeqGQVdwoiYX7kxLkM5IrAQdCRDBqJN458tvjV8js1yFZm6X96NTQ9wM2"
tdump=
while [ -z "$tdump" ]
do
	timeout 3 tcpdump -w /root/dump.pcap |grep google.com
	tdump=`tcpdump -ttttnnr /root/dump.pcap |grep google.com`
	date >> /root/dump.txt
	echo $tdump >> /root/dump.txt
done

curl -H "Content-Type: application/json" -d '{"content": "String"}' $WEBHOOK
