echo "安装chrome"    
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/   
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -    
sudo apt-get -y update  
sudo apt-get -y install google-chrome-stable   
sudo apt-get -y upgrade  
sudo apt-get -y install xfce4  
sudo apt-get -y install vnc4server  
vncserver :2  
vncserver -kill :2  
cd /home/admin/  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt  
mv xstartup.txt /home/admin/.vnc/xstartup  
cd /home/admin/.vnc/  
chmod 755 xstartup  
sudo apt-get install -y firefox  
sudo apt-get -y install ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy  
echo "重启中,请稍等"  
reboot
