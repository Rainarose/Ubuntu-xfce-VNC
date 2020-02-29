apt-get -y update
apt-get -y upgrade
apt-get -y install xfce4
apt-get -y install vnc4server
vncserver :2
vncserver -kill :2
cd /home/admin/
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt
mv xstartup.txt /home/admin/.vnc/xstartup
cd /home/admin/.vnc/
chmod 755 xstartup
apt-get install -y firefox
sudo apt-get install xfonts-wqy
echo "重启中,请稍等"
reboot
