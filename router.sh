sudo ip addr add 10.18.0.1/24 dev enp0s25
sudo sysctl net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o wlp3s0 -j MASQUERADE
sudo iptables -A FORWARD -i enp0s25 -o wlp3s0 -j ACCEPT
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo systemctl start dhcpd4@enp0s25.service
sudo systemctl status dhcpd4@enp0s25.service
