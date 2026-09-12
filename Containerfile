FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    xrdp \
    sudo \
    dbus-x11
RUN echo "xfce4-session" > /root/.xsession
EXPOSE 3389
CMD ["sh", "-c", "service xrdp start && tail -f /var/log/xrdp.log"]
