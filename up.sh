#优化
echo "----------------内核参数优化-------------------"
echo "fs.file-max = 65535" >> /etc/sysctl.conf  
echo "fs.nr_open = 65535" >> /etc/sysctl.conf
echo "net.core.rmem_max = 67108864" >> /etc/sysctl.conf
echo "net.core.wmem_max = 67108864" >> /etc/sysctl.conf
echo "net.core.netdev_max_backlog = 250000" >> /etc/sysctl.conf
echo "net.core.somaxconn = 65535" >> /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_tw_reuse = 1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_fin_timeout = 30" >> /etc/sysctl.conf
echo "net.ipv4.tcp_keepalive_time = 1200" >> /etc/sysctl.conf
echo "net.ipv4.ip_local_port_range = 10000 65000" >> /etc/sysctl.conf
echo "net.ipv4.tcp_max_syn_backlog = 8192" >> /etc/sysctl.conf
echo "net.ipv4.tcp_max_tw_buckets = 5000" >> /etc/sysctl.conf
echo "net.ipv4.tcp_fastopen = 3" >> /etc/sysctl.conf
echo "net.ipv4.tcp_rmem = 4096 87380 67108864" >> /etc/sysctl.conf
echo "net.ipv4.tcp_wmem = 4096 65536 67108864" >> /etc/sysctl.conf
echo "net.ipv4.tcp_mtu_probing = 1" >> /etc/sysctl.conf
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
echo "vm.swappiness = 10" >> /etc/sysctl.conf
echo "root soft nofile 65535" > /etc/security/limits.conf
echo "root hard nofile 65535" >> /etc/security/limits.conf
echo "root soft nproc 65535" >> /etc/security/limits.conf
echo "root hard nproc 65535" >> /etc/security/limits.conf
ulimit -n 65535
sysctl -p
