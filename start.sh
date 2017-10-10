kill -9 $(ps -e|grep hexo |awk '{print $1}')
nohup hexo server -p 80 &
