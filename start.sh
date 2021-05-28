#!/bin/bash
chmod a+x /home/www/limspro/onlyoffice/exec && chmod a+x /home/www/limspro_km/onlyoffice/exec
service apache2 restart
mongod --dbpath=/root/mongo_data --fork --logpath=/var/log/mongodb/mongodb.log --config=/etc/mongod.conf
/home/www/limspro/webpage/shell/autoExecution.sh
