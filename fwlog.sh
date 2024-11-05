IPTABLES=/sbin/iptables
$IPTABLES -A INPUT -p icmp -j LOG --log-prefix "Trafico PING"
$IPTABLES -A INPUT -p tcp --dport 22 -j LOG --log-prefix "Trafico SSH"
$IPTABLES -A INPUT -p tcp --dport 80 -j LOG --log-prefix "Trafico WEB"
$IPTABLES -A INPUT -p tcp --dport 1898 -j LOG --log-prefix "Trafico DRUPAL"
echo "reglas de log ejecutadas correctamente"
