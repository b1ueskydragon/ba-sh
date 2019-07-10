# sample of my bash_profile for auto-start of mysql@5.6
# $ vi ~/.bash_profile

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

mysql_ps=`ps -ef | grep mysql | grep -v grep | wc -l`

if [ $mysql_ps = 0 ]; then
  cd /usr/local/opt/mysql\@5.6/bin
  mysql.server start
  cd ~/
fi

