IPTABLES=/sbin/iptables
#$IPTABLES -A INPUT -i enp0s3 -p ICMP -j DROP
#$IPTABLES -A INPUT -i enp0s8 -s 10.10.10.0/24 -p ICMP -j DROP
$IPTABLES -A FORWARD -i enp0s3 -p tcp --dport 22 -j ACCEPT
$IPTABLES -A PREROUTING -t nat -p tcp --dport 22 -j DNAT --to 125.210.100.200:22
echo "reglas de puerto 22 ejecutadas correctamente"
$IPTABLES -A FORWARD -i enp0s3 -p tcp --dport 80 -j ACCEPT
$IPTABLES -A PREROUTING -t nat -p tcp --dport 80 -j DNAT --to 125.210.100.200:80
echo "reglas de puerto 80 ejecutadas correctamente"
$IPTABLES -A FORWARD -i enp0s3 -p tcp --dport 1898 -j ACCEPT
$IPTABLES -A PREROUTING -t nat -p tcp --dport 1898 -j DNAT --to 125.210.100.200:1898
echo "reglas de puerto 1898 ejecutadas correctamente"
echo "REGLAS DE REDIRECCION HACIA LAMPIAO ESTABLECIDAS"
