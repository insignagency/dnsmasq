FROM andyshinn/dnsmasq

# dans firefox pour qu'il pointe tous les sous-domaines de localhost sur 127.0.0.1
# about:config : network.dns.native-is-localhost true
RUN echo "local=/localhost/" >>  /etc/dnsmasq.conf
RUN echo "address=/localhost/127.0.0.1" >>  /etc/dnsmasq.conf
RUN echo "server=/*/8.8.8.8" >>  /etc/dnsmasq.conf
