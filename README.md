# Ubuntu-xfce-VNC
Ubuntu服务器安装桌面版一键脚本

# 步骤1:先执行下面的命令,执行完毕服务器会重启

## 命令1: 

sudo su root  

## 命令2:

### wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/test.sh&&chmod +x test.sh&&./test.sh

### 命令2备用:

apt-get -y update&&apt-get -y upgrade&&apt-get -y install xfce4&&apt-get -y install vnc4server&&vncserver :1&&vncserver -kill :1&&cd /root&&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt&&mv xstartup.txt /root/.vnc/xstartup&&cd /root/.vnc/&&chmod 755 xstartup&&echo "安装firefox浏览器中"apt-get install -y firefox&&echo "重启中,开机后再执行步骤2的命令"&&reboot

# 步骤2:服务器重启后,执行  
这两条分别复制执行   
sudo su root   
vncserver :1    



# 步骤3:电脑连接VNC 

VNC server地址填:   
ip:1  
然后输入你设置的密码  
就完成了




