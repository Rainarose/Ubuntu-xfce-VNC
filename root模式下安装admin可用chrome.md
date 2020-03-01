# 脚本1(root模式下安装vnc和桌面):  
sudo su root  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/root.sh&&chmod +x root.sh&&./root.sh  

# 脚本2(重启后执行--安装chrome--非root下):  
echo "安装chrome"    
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/   
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -    
sudo apt-get -y update  
sudo apt-get -y install google-chrome-stable  
sudo apt-get -y install ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy  
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




