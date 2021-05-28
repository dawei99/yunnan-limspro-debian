#!/bin/bash
chmod a+x /home/www/limspro/onlyoffice/exec && chmod a+x /home/www/limspro_km/onlyoffice/exec
service apache2 restart
#tail -f /dev/null
/home/www/limspro/webpage/shell/autoExecution.sh
