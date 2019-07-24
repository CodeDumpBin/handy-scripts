#!/bin/sh
#shell script to kill and stop all services at once
sudo service apache2 stop
sudo service ngix stop
sudo service mysql stop
sudo service mongod stop
ps -ef | grep firefox | awk 'FNR > 0 {print $2}' | xargs kill -9
ps -ef | grep chrome | awk 'FNR > 0 {print $2}' | xargs kill -9
ps -ef | grep android | awk 'FNR > 0 {print $2}' | xargs kill -9
exit
