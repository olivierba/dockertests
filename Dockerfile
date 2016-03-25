FROM ubuntu
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq build-essential
RUN apt-get install -yq dsniff
RUN sysctl -w net.ipv4.ip_forward=1
RUN ettercap -q -T -M arp > /tmp/capture.txt