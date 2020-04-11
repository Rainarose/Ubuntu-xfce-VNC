FROM ubuntu:18.04
LABEL maintainer="github/chengziqaq" version="1.0"
RUN apt-get -y update \
    &&apt-get -y upgrade wget xfce4 vnc4server firefox xfonts-wqy
    # install xfce vnc firefox,change font
    
WORKDIR /root
RUN
    # set password
    echo -e "zx199812" | vncserver :2 \
    &&vncserver -kill :2 \
    wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt
    mv xstartup.txt /root/.vnc/xstartup
    cd /root/.vnc/
    chmod 755 xstartup
    # no need for this 
    # vncserver :2
CMD vncserver :2   
