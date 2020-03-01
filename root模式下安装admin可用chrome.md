# 脚本1(root模式下安装vnc+桌面+firefox):  
sudo su root  
apt-get -y update  
apt-get -y upgrade  
apt-get -y install xfce4  
apt-get -y install vnc4server  
apt-get install -y firefox  
sudo apt-get install xfonts-wqy  
echo "重启中,请稍等"
reboot  
# 脚本2(重启后执行--安装chrome--amin下):  
echo "安装chrome"    
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/   
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -    
sudo apt-get -y update  
sudo apt-get -y install google-chrome-stable  
sudo apt-get -y install ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy  
echo "修改配置文件,解决chrome乱码问题"  
sudo -i  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/49-sansserif.conf  
echo "备份远文件中"  
mv /etc/fonts/conf.d/49-sansserif.conf /etc/fonts/conf.d/49-sansserif.conf.backup  
mv 49-sansserif.conf /etc/fonts/conf.d/49-sansserif.conf  
chmod 777 /etc/fonts/conf.d/49-sansserif.conf  
reboot  
# 脚本3(必须admin下--配置admint用户的vnc):  
echo "中间需要您设置VNC密码"  
vncserver :2  
vncserver -kill :2  
cd /home/admin/  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt   
mv xstartup.txt /home/admin/.vnc/xstartup  
cd /home/admin/.vnc/  
chmod 755 xstartup  
vncserver :2  
echo "VNC已经启动,可以用电脑连接了"  
# 脚本4(重启VNC)    
vncserver -kill :2  
vncserver :2  
### 电脑连接VNC  
ip:2  




