#!/bin/bash
service apache2 restart
redis-server /etc/redis/redis.conf
/home/www/limspro/webpage/shell/autoExecution.sh
