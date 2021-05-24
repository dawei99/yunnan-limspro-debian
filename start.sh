#!/bin/bash
service apache2 restart
mongod --dbpath=/root/mongo_data  --fork --logpath=/var/log/mongodb/mongodb.log
/home/www/limspro/webpage/shell/autoExecution.sh
