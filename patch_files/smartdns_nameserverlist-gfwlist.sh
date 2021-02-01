#!/bin/sh

if [ -f /etc/storage/gfwlist/gfwlist_list.conf ]
then
	sed 's|^|nameserver /|g' /etc/storage/gfwlist/gfwlist_list.conf > /etc/storage/smartdns_nameserverlist-gfwlist.conf
	sed -i 's|$|/foreign|g' /etc/storage/smartdns_nameserverlist-gfwlist.conf
fi
