# 脚本1:  
sudo su root  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/root.sh&&chmod +x root.sh&&./root.sh  

# 脚本2(重启后执行):  
echo "安装chrome"    
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/   
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -    
sudo apt-get -y update  
sudo apt-get -y install google-chrome-stable  

# 脚本3(admin下或者非root用户即可):  
vncserver :2  
vncserver -kill :2  
cd /home/admin/  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt  
mv xstartup.txt /home/admin/.vnc/xstartup  
cd /home/admin/.vnc/  
chmod 755 xstartup  




