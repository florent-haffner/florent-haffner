# Setup network bridge for KVM

## Network preview

Gather network informations

    $ ip addr

```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
2: enp5s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether xxx
    inet 192.168.1.89/24 brd 192.168.1.255 scope global dynamic noprefixroute enp5s0
3: wlp4s0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
    link/ether xxx
4: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
    link/ether xxx
```

The necessary interface is `enp5s0` (state UP).

    $ cd /etc/netplan

Let's show the network configs:

    $ cat 01-network-manager-all.yaml 

```
# Let NetworkManager manage all devices on this system
network:
  version: 2
  renderer: NetworkManager
```

let's backup the file 
```
sudo cp 01-network-manager-all.yaml 01-network-manager-all.yaml.backup
```

## Update network config
Then update the file using `networkd` and a bridge setup.

```
network:
  version: 2
  renderer: networkd
  ethernets:
    enp5s0:
      dhcp4: no
  bridges:
    br0:
      dhcp4: yes
      interfaces:
        - enp5s0
```

Let's stop/launch the correct services and commit the network configuuration:
```
sudo systemctl stop NetworkManager && sudo systemctl disable NetworkManager

sudo systemctl start systemd-networkd && sudo systemctl enable systemd-networkd 

sudo netplan apply
```

## Network verification
Let's checkout the bridges in `brctl show`:

```
bridge name	     bridge id            STP enabled     interfaces
br0	             8000.ba936fe35bdc	  no              np5s0
virbr0           8000.525400bb1547	  yes
```

Bravo! :tada:


## Refs used
- https://netplan.readthedocs.io/en/latest/netplan-yaml/#properties-for-device-type-bridges
https://major.io/p/creating-a-bridge-for-virtual-machines-using-systemd-networkd/ | IT IS OK BUT MISS DHCP4
- https://askubuntu.com/questions/1111768/how-do-i-configure-dhcp-bridge-with-netplan-for-kvm-on-ubuntu-18-04-lts
- https://www.tecmint.com/create-network-bridge-in-ubuntu/
- https://bugs.launchpad.net/netplan/+bug/2007304
- https://www.thegeekstuff.com/2017/06/brctl-bridge/ | NOT SURE ABOUT THIS ONE
- https://tldp.org/HOWTO/BRIDGE-STP-HOWTO/set-up-the-bridge.html
- https://developers.redhat.com/articles/2022/04/06/introduction-linux-bridging-commands-and-features#bridge_ageing_time | NOT SURE ABOUT THIS ONE AS WELL
