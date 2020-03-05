FROM ubuntu:18.04
LABEL version="1.0" 
LABEL maintainer="pig4cloud.com"
ENV from:chengziblog.com,github/chengziqaq/Ubuntu-xfce-VNC
RUN apt-get -y update \
    &&apt-get -y upgrade \  
    &&apt-get -y install xfce4 \
    &&apt-get -y install vnc4server \
    &&apt-get install -y firefox \
    &&apt-get install xfonts-wqy   

    &&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/google-chrome.list -P /etc/apt/sources.list.d/ 
    &&wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \   
    &&sudo apt-get -y update \
    &&sudo apt-get -y install google-chrome-stable \  
    &&sudo apt-get -y install ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy \
    &&echo "修改配置文件,解决chrome乱码问题" \
    &&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/49-sansserif.conf \
    &&echo "备份远文件中" \
    &&mv /etc/fonts/conf.d/49-sansserif.conf /etc/fonts/conf.d/49-sansserif.conf.backup \
    &&mv 49-sansserif.conf /etc/fonts/conf.d/49-sansserif.conf \
    &&chmod 777 /etc/fonts/conf.d/49-sansserif.conf 
