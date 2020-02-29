apt-get -y update
apt-get -y upgrade
apt-get -y install xfce4
apt-get -y install vnc4server
vncserver :1
vncserver -kill :1
cd /root
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt
mv xstartup.txt /root/.vnc/xstartup
cd /root/.vnc/
chmod 755 xstartup
apt-get install -y firefox
sudo apt-get install xfonts-wqy
echo "重启中,请稍等"
reboot
