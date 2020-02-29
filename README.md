# Ubuntu-xfce-VNC
Ubuntu服务器安装桌面版一键脚本

先执行这个,执行完毕服务器会重启
sudo su root&&apt-get update&&apt-get install xfce4&&apt-get install vnc4server&&vncserver :1&&vncserver -kill :1&&cd /root&&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt&&mv xstartup.txt /root/.vnc/xstartup&&cd /root/.vnc/&&chmod 755 xstartup&&reboot

服务器重启后,执行
vncserver :1

然后就可以连接vnc了





