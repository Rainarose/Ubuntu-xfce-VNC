# Ubuntu-xfce-VNC
Ubuntu服务器安装桌面版一键脚本   
测试通过:  
阿里云香港轻量  
UbuntuUbuntu 16.04  
UbuntuUbuntu 18.04  

vultr不知道什么原因安装之后连不上  

参考文章:   
https://blog.csdn.net/qq_33062317/article/details/80050325  
   
脚本默认安装firefox浏览器    
修改了字体解决了firefox中文乱码问题  
参考文章  
https://blog.csdn.net/Striker_V/article/details/52592591  

# 步骤1:依次执行下面的命令,执行完毕服务器会重启

## 命令1: 

sudo su root  

## 命令2:
安装过程中有两处停顿,第一次需要直接回车   
第二次是输入vnc连接密码,只能八位数,  
若输入密码多于八位 密码只取前八位  

sudo su root   
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/test.sh&&chmod +x test.sh&&./test.sh

#### 命令2备用:

apt-get -y update&&apt-get -y upgrade&&apt-get -y install xfce4&&apt-get -y install vnc4server&&vncserver :1&&vncserver -kill :1&&cd /root&&wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/xstartup.txt&&mv xstartup.txt /root/.vnc/xstartup&&cd /root/.vnc/&&chmod 755 xstartup&&echo "安装firefox浏览器中"&&sudo apt-get install xfonts-wqy&&apt-get install -y firefox&&echo "重启中,开机后再执行步骤2的命令"&&reboot

# 步骤2:服务器重启后,执行  
这两条分别复制执行   
sudo su root   
vncserver :1    



# 步骤3:电脑连接VNC 

VNC server地址填:   
ip:1  
然后输入你设置的密码  
就完成了


# 其他:  

## VNC开启  
sudo -i    
vncserver :1  
## vnc关闭:    
sudo -i   
vncserver -kill :1

## vnc重启
sudo -i   
vncserver -kill :1   
vncserver :1


