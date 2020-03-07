FROM ubuntu:16.04
LABEL maintainer="github/chengziqaq" version="1.0"
RUN apt-get -y update \
    &&apt-get -y upgrade \
    &&apt-get -y install wget \
    &&apt-get -y install xfce4 \
    &&apt-get -y install vnc4server \
    &&apt-get install -y firefox \
    &&apt-get install xfonts-wqy
RUN cd /root \
    &&echo -e "zx199812" | vncserver :2 \
    &&vncserver -kill :2 \
    wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt
    mv xstartup.txt /root/.vnc/xstartup
    cd /root/.vnc/
    chmod 755 xstartup
    vncserver :2
    
