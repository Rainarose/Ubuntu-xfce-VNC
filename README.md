# Ubuntu-xfce-VNC
Ubuntu服务器安装桌面版一键脚本

# 步骤1:先执行下面的命令,执行完毕服务器会重启

## 命令1: 

sudo su root  

## 命令2:  

apt-get -y update&&apt-get -y upgrade&&apt-get -y install xfce4&&apt-get -y install vnc4server&&vncserver :1&&vncserver -kill :1&&cd /root&&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt&&mv xstartup.txt /root/.vnc/xstartup&&cd /root/.vnc/&&chmod 755 xstartup&&reboot

# 步骤2:服务器重启后,执行
vncserver :1

# 步骤3:电脑连接VNC  

sudo su root    
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/test.sh&&chmod +x test.sh&&./test.sh



