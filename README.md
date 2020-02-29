# Ubuntu-xfce-VNC
Ubuntu服务器安装桌面版一键脚本

sudo su root&&apt-get update&&apt-get install xfce4&&apt-get install vnc4server&&vncserver :1&&vncserver -kill :1&&cd /root&&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt&&cp xstartup.txt /root/.vnc/xstartup&&/root/.vnc/&&chmod 755 xstartup


权限 755




