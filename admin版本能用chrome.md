安装:  
sudo -i  
wget https://raw.githubusercontent.com/chengziqaq/Ubuntu-xfce-VNC/master/admin.sh&&chmod +x&&./admin.sh  
重启后,在admin用户下  
vncserver :2  
其他:  
vnc重启:
vncserver -kill :2  
vncserver :2  
vnc打开:  
vncserver :2  
vnc关闭:  
vncserver -kill :2  
参考文章  
https://blog.csdn.net/bluecom24/article/details/39994519  
https://blog.csdn.net/u012576527/article/details/52266785?depth_1-utm_source=distribute.pc_relevant.none-task&utm_source=distribute.pc_relevant.none-task  
https://www.linuxidc.com/Linux/2016-05/131096.htm  
https://blog.csdn.net/lxlong89940101/article/details/86287279
