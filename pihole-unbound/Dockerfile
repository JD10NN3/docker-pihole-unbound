FROM pihole/pihole:v5.6
LABEL maintainer="contact@jodionne.com"

# install and copy Unbound configuration
RUN apt update && apt install -y unbound
COPY configs/unbound-pihole.conf /etc/unbound/unbound.conf.d/pi-hole.conf

# prepare custom entrypoint
COPY scripts/entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ./entrypoint.sh