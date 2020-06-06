#!/usr/bin/env bash

DISABLE_SPECTRE_PATCHES="true"

SATELLITE_ADMIN_USERNAME="satAdmin"
SATELLITE_ADMIN_PASSWORD="Passw0rd1!"
SATELLITE_ADMIN_EMAIL="you@example.com"
SATELLITE_ADMIN_FIRST_NAME="Satellite"
SATELLITE_ADMIN_LAST_NAME="Admin"

SATELLITE_INITIAL_ORGANIZATION="Satellite Labs"
SATELLITE_INITIAL_LOCATION="Homelab"

## Assumptions:
### Satellite VM with 2 NICs (eth0 & eth1).
### eth0 = static IP from 192.168.42.0/24 @satellite.kemo.labs.  
### Satellite will serve network services over eth1 with a static IP of 192.168.44.10

SATELLITE_HOSTNAME="satellite"
SATELLITE_DOMAIN="kemo.labs"

ENABLE_DHCP="true"
DHCP_GATEWAY="192.168.44.1"
DHCP_INTERFACE="eth1"
DHCP_SERVER="192.168.44.10"
DHCP_NAMESERVERS="192.168.44.10"
DHCP_RANGE="192.168.44.100 192.168.44.200"

ENABLE_DNS="true"
DNS_FORWARDERS="192.168.44.1; 192.168.42.5"
DNS_INTERFACE="eth1"
DNS_REVERSE="44.168.192.in-addr.arpa"
DNS_SERVER="127.0.0.1"
DNS_ZONE="satellite.labs"

ENABLE_TFTP="true"
TFTP_SERVERNAME="192.168.44.10"

ENABLE_HTTPBOOT="true"
HTTPBOOT_INTERFACE_LISTEN_ON="both"

INSTALL_INSIGHTS_CLIENT="true"