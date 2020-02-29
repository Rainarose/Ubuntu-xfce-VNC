sudo su root|apt-get update
apt-get -y install xfce4
apt-get -y install vnc4server
vncserver :1
vncserver -kill :1
cd /root
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt
mv xstartup.txt /root/.vnc/xstartup
cd /root/.vnc/
chmod 755 xstartup
reboot
